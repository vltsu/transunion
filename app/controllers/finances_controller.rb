#encoding: UTF-8
class FinancesController < ApplicationController

  #Оплата заказчиком по счёту
  def customer_payment_bill
    @finance = Finance.new
  end

  #Редактирование оплаты заказчиком по счёту
  def customer_payment_bill_edit
    @finance = Finance.find(params[:id])
  end


  #Создание записи оплаты заказчиком по счёту
  def customer_payment_bill_create

    @finance = Finance.new(params[:finance])

    request_one = Request.find(:first, :conditions => "bill_id = #{params[:finance]['bill_id']}")

    if !request_one
      render :action => 'customer_payment_bill', :locals => { :notice => 'Заявки с указанным номером счёта не существует' }
    else
      requests_all = Request.find(:all, :conditions => "bill_id = #{params[:finance]['bill_id']}")
      params[:finance]['local_type'] = 'income'
      params[:finance]['glob_type']  = 'customer_payment_bill'
      params[:finance]['request_id'] = request_one.id

      if request_one.customer_payment_way_for_salary == 'безнал с ндс'
        #do nothing
      else
        requests_all.each do |req|
          req.customer_payment_way_for_salary = 'безнал с ндс'
          req.save
        end
      end

      @finance = Finance.new(params[:finance])
      if @finance.save
        redirect_to({:action => 'index'}, {:notice => 'Запись об оплате заказчиком по счету добавлена' })
      else
        render :action => 'customer_payment_bill'
      end
    end
  end

  #Обновление записи оплаты заказчиком по счёту
  def customer_payment_bill_update
    @finance = Finance.find(params[:id])
    request_one = Request.find(:first, :conditions => "bill_id = #{params[:finance][:bill_id]}")

    if !request_one
      render :action => 'customer_payment_bill_edit', :locals => { :notice => 'Заявки с указанным номером счёта не существует' }
    else
      params[:finance][:request_id] = request_one.id
      if @finance.update_attributes(params[:finance])
        redirect_to({:action => 'index'}, {:notice => 'Запись об оплате заказчиком по счету добавлена' })
      else
        render :action => 'customer_payment_bill_edit', :locals => { :notice => 'Заявки с указанным номером счёта не существует' }
      end
    end
  end

end
