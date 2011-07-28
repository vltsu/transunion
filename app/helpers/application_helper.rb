#encoding: UTF-8
module ApplicationHelper
  #Оплачена ли заявка перевозчику
  def is_payed_to_carrier(request_instance)
    #Платежи перевозчику по данной заявке
    payments = Finance.find( :all, :conditions => "request_id = #{request_instance.id} AND glob_type = 'outcome'" )
    #Сумма к оплате
      summ_to_pay = request_instance.carrier_summ_to_pay
    #Оплаченная сумма
    payed_summ = 0
    payments.each do |pay|
      payed_summ = payed_summ + pay.summ
    end
    #Сравнение оплаченной суммы и суммы к оплате
    if summ_to_pay == payed_summ && payed_summ != 0
      true
    else
      false
    end
  end

  #Оплачена ли заявка заказчику
  def is_payed_by_customer(request_instance)
    #Случай если заявка оплачивается по безналу(по счёту)
    if request_instance.bill_id
      #Сумма к оплате по счёту
      summ_to_pay = customer_summ_to_pay_for_bill(request_instance.bill_id)
      #Оплачено по счёту
      payed_summ = payed_summ_for_bill_income(request_instance.bill_id)
    else #Оплата наличными(не по счёту)
      #Сумма к оплате
      summ_to_pay = request_instance.carrier_summ_to_pay
      #Платежи заказчиком по данной заявке
      payments = Finance.find( :all, :conditions => "request_id = #{request_instance.id} AND local_type = 'income'" )
      #Оплаченная сумма
      payed_summ = 0
      payments.each do |pay|
        payed_summ = payed_summ + pay.summ
      end
    end
    #Сравнение оплаченной суммы и суммы к оплате
    if summ_to_pay == payed_summ && payed_summ != 0
      true
    else
      false
    end
  end

  #К оплате заказчиком по счёту
  def customer_summ_to_pay_for_bill(bill_id)
    requests = Request.find(:all, :conditions => "bill_id = #{bill_id}")
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
        summ_to_pay = customer_summ_to_pay_for_bill(finance.bill_id)
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

  #Приход наличных
  def income_cash_all
    #Определение payment_method_id для наличных
    payment_method_nal = PaymentMethod.find(:first, :conditions => "payment_method = 'нал'")
    #Поиск всех финансовых записей где деньги приходят налом
    finances = Finance.find(:all, :conditions => "local_type = 'customer_payment_cash' OR (local_type = 'income_others' AND payment_method_id = #{payment_method_nal.id})")
    #Подсчёт суммы
    cash_income_summ = 0
    finances.each do |fin|
      cash_income_summ = cash_income_summ + fin.summ
    end
    cash_income_summ
  end

  #Расход наличных
  def outcome_cash_all
    #Определение payment_method_id для наличных
    payment_method_nal = PaymentMethod.find(:first, :conditions => "payment_method = 'нал'")
    #Поиск всех финансовых записей где деньги уходят налом
    finances = Finance.find(:all, :conditions => "local_type = 'carrier_payment_cash' OR (local_type = 'outcome_others' AND payment_method_id = #{payment_method_nal.id})")
    #Подсчёт суммы
    cash_outcome_summ = 0
    finances.each do |fin|
      cash_outcome_summ = cash_outcome_summ + fin.summ
    end
    cash_outcome_summ
  end
end
