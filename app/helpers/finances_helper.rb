module FinancesHelper

  #К оплате заказчиком по счёту
  def customer_summ_to_pay_for_bill(finance)
    requests = Request.find(:all, :conditions => "bill_id = #{finance.bill_id}")
    summ_to_pay = 0
    requests.each do |req|
      summ_to_pay = summ_to_pay + req.customer_summ_to_pay
    end
    summ_to_pay
  end

  #Оплачено заказчиком по счёту
  def payed_summ_for_bill_income(bill_id)
    finances = Finance.find(:all, :conditions => "bill_id = #{bill_id} AND local_type ='customer_payment_bill'")
    payed_summ = 0
    finances.each do |fin|
      payed_summ = payed_summ + fin.summ
    end
    payed_summ
  end

  #Оплачено заказчиком по заявке
  def payed_summ_for_request_income(request_id)
    finances  = Finance.find(:all, :conditions => "request_id = #{request_id} AND local_type = 'customer_payment_cash'")
    payed_summ = 0
    finances.each do |fin|
      payed_summ = payed_summ + fin.summ
    end
    payed_summ
  end

  #Оплачено перевозчику по заявке
  def payed_summ_for_request_to_carrier(request_id)
    finances = Finance.find(:all, :conditions => "request_id = #{request_id} AND glob_type = 'outcome'")
    payed_summ = 0
    finances.each do |fin|
      payed_summ = payed_summ + fin.summ
    end
    payed_summ
  end

  #Остаток к оплате по финансовой записи(автоопределение по заявке или по счёту)
  def finance_balance(finance)
    if finance.glob_type == 'income' #Приход
      if finance.local_type == 'customer_payment_cash' #Приход по заявке
        #к оплате заказчиком по заявке
        summ_to_pay = Request.find(finance.request_id).customer_summ_to_pay
        #оплачено заказчиком по заявке
        payed_summ = payed_summ_for_request_income(finance.request_id)
        #остаток
        balance = summ_to_pay - payed_summ
      elsif finance.local_type == 'customer_payment_bill' #Приход по счёту
        #к оплате заказчиком по счёту
        summ_to_pay = customer_summ_to_pay_for_bill(finance)
        #оплачено заказчиком по счёту
        payed_summ = payed_summ_for_bill_income(finance.bill_id)
        #остаток
        balance = summ_to_pay - payed_summ
      end
    elsif finance.glob_type == 'outcome' #Расход
      #оплатить перевозчику по заявке
      summ_to_pay = Request.find(finance.request_id).carrier_summ_to_pay
      #оплачено перевозчику по заявки
      payed_summ = payed_summ_for_request_to_carrier(finance.request_id)
      #остаток
      balance = summ_to_pay - payed_summ
    end
  end
end
