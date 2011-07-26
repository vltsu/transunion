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

  #Оплата заказчиком наличными
  def customer_payment_cash
    @finance = Finance.new
  end

  #Редактирование оплаты заказчиком наличными
  def customer_payment_cash_edit
    @finance = Finance.find(params[:id])
  end


  #Создание записи оплаты заказчиком наличными
  def customer_payment_cash_create

    @finance = Finance.new(params[:finance])

    request_one = Request.find(:first, :conditions => "id = #{params[:finance][:request_id]}")

    if !request_one
      render :action => 'customer_payment_cash', :locals => { :notice => 'Заявки с указанным номером не существует' }
    else
      params[:finance]['local_type'] = 'income'
      params[:finance]['glob_type']  = 'customer_payment_cash'
      params[:finance]['request_id'] = request_one.id

      if request_one.customer_payment_way_for_salary == 'безнал с ндс'
        #do nothing
      else
        request_one.customer_payment_way_for_salary = 'наличные'
        requset_one.save
      end

      @finance = Finance.new(params[:finance])
      if @finance.save
        redirect_to({:action => 'index'}, {:notice => 'Запись об оплате заказчиком наличными добавлена' })
      else
        render :action => 'customer_payment_cash'
      end
    end
  end

  #Обновление записи оплаты заказчиком наличными
  def customer_payment_cash_update
    @finance = Finance.find(params[:id])
    request_one = Request.find(:first, :conditions => "id = #{params[:finance][:request_id]}")

    if !request_one
      render :action => 'customer_payment_cash_edit', :locals => { :notice => 'Заявки с указанным номером не существует' }
    else
      params[:finance][:request_id] = request_one.id
      if @finance.update_attributes(params[:finance])
        redirect_to({:action => 'index'}, {:notice => 'Запись об оплате заказчиком наличными обновлена' })
      else
        render :action => 'customer_payment_cash_edit'
      end
    end
  end

  #Приход прочий
  def income_others
    @finance = Finance.new
  end

  #Редактирование приход прочий
  def income_others_edit
    @finance = Finance.find(params[:id])
  end


  #Создание записи приход прочий
  def income_others_create
    params[:finance]['local_type'] = 'income'
    params[:finance]['glob_type']  = 'income_others'

    @finance = Finance.new(params[:finance])
    if @finance.save
      redirect_to({:action => 'index'}, {:notice => 'Запись о приходе добавлена' })
    else
      render :action => 'income_others'
    end
  end

  #Обновление записи приход прочий
  def income_others_update
    @finance = Finance.find(params[:id])

    if @finance.update_attributes(params[:finance])
      redirect_to({:action => 'index'}, {:notice => 'Запись о приходе обновлена' })
    else
      render :action => 'income_others'
    end
  end

  #Оплата перевозчику по счёту
  def carrier_payment_bill
    @finance = Finance.new
  end

  #Редактирование оплаты перевозчику по счёту
  def carrier_payment_bill_edit
    @finance = Finance.find(params[:id])
  end


  #Создание записи оплаты перевозчиком по счёту
  def carrier_payment_bill_create

    @finance = Finance.new(params[:finance])

    request_one = Request.find(:first, :conditions => "id = #{params[:finance]['request_id']}")

    if !request_one
      render :action => 'carrier_payment_bill', :locals => { :notice => 'Заявки с указанным номером не существует' }
    else
      params[:finance]['local_type'] = 'outcome'
      params[:finance]['glob_type']  = 'carrier_payment_bill'
      params[:finance]['request_id'] = request_one.id

      #Проставление значения поля способа оплаты, для последующего расчёта зарплаты
      if request_one.carrier_payment_way_for_salary == 'наличные'
        #do nothing
      elsif request_one.carrier_payment_way_for_salary == 'безнал с ндс'
        #do nothing
      elsif request_one.carrier_payment_way_for_salary == 'безнал без ндс'
        if params[:finance][:carrier_beznal_way] == 'с ндс'
          request_one.carrier_payment_way_for_salary = 'безнал с ндс'
          request_one.save
        end
      else #если значение не задано
        if params[:finance][:carrier_beznal_way] == 'с ндс'
          request_one.carrier_payment_way_for_salary = 'безнал с ндс'
          request_one.save
        elsif params[:finance][:carrier_beznal_way] == 'без ндс'
          request_one.carrier_payment_way_for_salary = 'безнал без ндс'
          request_one.save
        end
      end

      @finance = Finance.new(params[:finance])
      if @finance.save
        redirect_to({:action => 'index'}, {:notice => 'Запись об оплате перевозчику по счету добавлена' })
      else
        render :action => 'carrier_payment_bill'
      end
    end
  end

  #Обновление записи оплаты перевозчиком по счёту
  def carrier_payment_bill_update
    @finance = Finance.find(params[:id])
    request_one = Request.find(:first, :conditions => "id = #{params[:finance][:request_id]}")

    if !request_one
      render :action => 'carrier_payment_bill_edit', :locals => { :notice => 'Заявки с указанным номером счёта не существует' }
    else
      params[:finance][:request_id] = request_one.id
      #Проставление значения поля способа оплаты, для последующего расчёта зарплаты
      if request_one.carrier_payment_way_for_salary == 'наличные'
        #do nothing
      elsif request_one.carrier_payment_way_for_salary == 'безнал с ндс'
        #do nothing
      elsif request_one.carrier_payment_way_for_salary == 'безнал без ндс'
        if params[:finance][:carrier_beznal_way] == 'с ндс'
          request_one.carrier_payment_way_for_salary = 'безнал с ндс'
          request_one.save
        end
      else #если значение не задано
        if params[:finance][:carrier_beznal_way] == 'с ндс'
          request_one.carrier_payment_way_for_salary = 'безнал с ндс'
          request_one.save
        elsif params[:finance][:carrier_beznal_way] == 'без ндс'
          request_one.carrier_payment_way_for_salary = 'безнал без ндс'
          request_one.save
        end
      end
      if @finance.update_attributes(params[:finance])
        redirect_to({:action => 'index'}, {:notice => 'Запись об оплате перевозчику по счету добавлена' })
      else
        render :action => 'carrier_payment_bill_edit', :locals => { :notice => 'Заявки с указанным номером счёта не существует' }
      end
    end
  end

  #Оплата перевозчику наличными
  def carrier_payment_cash
    @finance = Finance.new
  end

  #Редактирование оплаты перевозчику наличными
  def carrier_payment_cash_edit
    @finance = Finance.find(params[:id])
  end


  #Создание записи оплаты перевозчику наличными
  def carrier_payment_cash_create

    @finance = Finance.new(params[:finance])

    request_one = Request.find(:first, :conditions => "id = #{params[:finance][:request_id]}")

    if !request_one
      render :action => 'carrier_payment_cash', :locals => { :notice => 'Заявки с указанным номером не существует' }
    else
      params[:finance]['local_type'] = 'outcome'
      params[:finance]['glob_type']  = 'carrier_payment_cash'
      params[:finance]['request_id'] = request_one.id

      if request_one.carrier_payment_way_for_salary == 'безнал с ндс'
        #do nothing
      else
        request_one.carrier_payment_way_for_salary = 'наличные'
        requset_one.save
      end

      @finance = Finance.new(params[:finance])
      if @finance.save
        redirect_to({:action => 'index'}, {:notice => 'Запись об оплате перевозчику  наличными добавлена' })
      else
        render :action => 'carrier_payment_cash'
      end
    end
  end

  #Обновление записи оплаты перевозчику наличными
  def carrier_payment_cash_update
    @finance = Finance.find(params[:id])
    request_one = Request.find(:first, :conditions => "id = #{params[:finance][:request_id]}")

    if !request_one
      render :action => 'carrier_payment_cash_edit', :locals => { :notice => 'Заявки с указанным номером не существует' }
    else
      params[:finance][:request_id] = request_one.id
      if @finance.update_attributes(params[:finance])
        redirect_to({:action => 'index'}, {:notice => 'Запись об оплате перевозчику наличными обновлена' })
      else
        render :action => 'carrier_payment_cash_edit'
      end
    end
  end

  #Расход прочий
  def outcome_others
    @finance = Finance.new
  end

  #Редактирование расход прочий
  def outcome_others_edit
    @finance = Finance.find(params[:id])
  end


  #Создание записи расход прочий
  def outcome_others_create
    params[:finance]['local_type'] = 'outcome'
    params[:finance]['glob_type']  = 'outcome_others'

    @finance = Finance.new(params[:finance])
    if @finance.save
      redirect_to({:action => 'index'}, {:notice => 'Запись о расходе добавлена' })
    else
      render :action => 'outcome_others'
    end
  end

  #Обновление записи расход прочий
  def outcome_others_update
    @finance = Finance.find(params[:id])

    if @finance.update_attributes(params[:finance])
      redirect_to({:action => 'index'}, {:notice => 'Запись о расходе обновлена' })
    else
      render :action => 'outcome_others'
    end
  end

  #Зарплата
  def outcome_salary
    @finance = Finance.new
  end

  #Зарплата редактирование
  def outcome_salary_edit
    @finance = Finance.find(params[:id])
  end


  #Создание записи зарплата
  def outcome_salary_create
    params[:finance]['local_type'] = 'outcome'
    params[:finance]['glob_type']  = 'outcome_salary'

    @finance = Finance.new(params[:finance])
    if @finance.save
      redirect_to({:action => 'index'}, {:notice => 'Запись о зарплате добавлена' })
    else
      render :action => 'outcome_salary'
    end
  end

  #Обновление записи зарплата
  def outcome_salary_update
    @finance = Finance.find(params[:id])

    if @finance.update_attributes(params[:finance])
      redirect_to({:action => 'index'}, {:notice => 'Запись о зарплате обновлена' })
    else
      render :action => 'outcome_salary'
    end
  end

end
