#encoding: UTF-8
module ApplicationHelper
  #Администратор?
  def admin?
    user = User.find(session[:user])
    user.role == 'administrator'
  end


  #Оплачена ли заявка перевозчику
  def is_payed_to_carrier(request_instance)
    #Платежи перевозчику по данной заявке
    payments = Finance.find( :all, :conditions => "request_id = #{request_instance.id} AND glob_type = 'outcome'" )
    #Сумма к оплате
      summ_to_pay = request_instance.carrier_summ_to_pay
    #Оплаченная сумма
    payed_summ = 0
    payments.each do |pay|
      payed_summ += pay.summ
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
        payed_summ += pay.summ
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
      summ_to_pay += req.customer_summ_to_pay
    end
    summ_to_pay
  end

  #Оплачено заказчиком по счёту
  def payed_summ_for_bill_income(bill_id)
    finances = Finance.find(:all, :conditions => "bill_id = #{bill_id} AND local_type ='customer_payment_bill'")
    payed_summ = 0
    finances.each do |fin|
      payed_summ += fin.summ
    end
    payed_summ
  end

  #Оплачено заказчиком по заявке
  def payed_summ_for_request_income(request_id)
    finances  = Finance.find(:all, :conditions => "request_id = #{request_id} AND local_type = 'customer_payment_cash'")
    payed_summ = 0
    finances.each do |fin|
      payed_summ += fin.summ
    end
    payed_summ
  end

  #Оплачено перевозчику по заявке
  def payed_summ_for_request_to_carrier(request_id)
    finances = Finance.find(:all, :conditions => "request_id = #{request_id} AND glob_type = 'outcome'")
    payed_summ = 0
    finances.each do |fin|
      payed_summ += fin.summ
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
      cash_outcome_summ += fin.summ
    end
    cash_outcome_summ
  end

  #Подсчёт премии за все закрытые заявки по месяцу и году
  def colleague_request_percent_summ(colleague, year, month)
    #Поиск всех заявок по сотруднику, месяцу и году
    requests = Request.find(:all, :conditions => "user_id = #{colleague.id} AND year(created_at) = #{year} AND month(created_at) = #{month}" )
    summ = 0
    #Обработка всех заказов, поиск оплаченных и подсчёт суммы в зависимости от условий
    requests.each do |req|
      if is_payed_by_customer(req) && is_payed_to_carrier(req)
        if req.customer_payment_way_for_salary == 'наличные' && req.carrier_payment_way_for_salary == 'наличные'
          summ += req.customer_summ_to_pay - req.carrier_summ_to_pay
        end

        if req.customer_payment_way_for_salary == 'безнал с ндс' && req.carrier_payment_way_for_salary == 'наличные'
          summ += 0.93 * req.customer_summ_to_pay - req.carrier_summ_to_pay
        end

        if req.customer_payment_way_for_salary == 'безнал с ндс' && req.carrier_payment_way_for_salary == 'безнал без ндс'
          carrier_summ_to_pay = req.carrier_summ_to_pay + 0.02 * req.carrier_summ_to_pay
          summ += 0.93 * (req.customer_summ_to_pay - carrier_summ_to_pay)
        end

        if req.customer_payment_way_for_salary == 'безнал с ндс' && req.carrier_payment_way_for_salary == 'безнал с ндс'
          summ += 0.93 * (req.customer_summ_to_pay - req.carrier_summ_to_pay)
        end
      end
    end
    #Сумма к оплате
    summ_to_pay = summ * (colleague.request_percent / 100)
    #Округление до целого числа
    summ_to_pay.round
  end

  #Подсчёт премии по конкретной заявке
  def request_premium_summ(request_instance)
    req = Request.find(request_instance.id)
    if is_payed_by_customer(req) && is_payed_to_carrier(req)
      if req.customer_payment_way_for_salary == 'наличные' && req.carrier_payment_way_for_salary == 'наличные'
        summ = req.customer_summ_to_pay - req.carrier_summ_to_pay
      end

      if req.customer_payment_way_for_salary == 'безнал с ндс' && req.carrier_payment_way_for_salary == 'наличные'
        summ = 0.93 * req.customer_summ_to_pay - req.carrier_summ_to_pay
      end

      if req.customer_payment_way_for_salary == 'безнал с ндс' && req.carrier_payment_way_for_salary == 'безнал без ндс'
        carrier_summ_to_pay = req.carrier_summ_to_pay + 0.02 * req.carrier_summ_to_pay
        summ = 0.93 * (req.customer_summ_to_pay - carrier_summ_to_pay)
      end

      if req.customer_payment_way_for_salary == 'безнал с ндс' && req.carrier_payment_way_for_salary == 'безнал с ндс'
        summ = 0.93 * (req.customer_summ_to_pay - req.carrier_summ_to_pay)
      end
    end
    #Размер премии
    summ ||= 0
    premium_summ = summ * (request_instance.user.request_percent / 100)
    #Округление до целого числа
    premium_summ.round
  end

  #Выплачено сотруднику за месяц
  def salary_payed_for_month(colleague, year, month)
    finances = Finance.find(:all, :conditions => "salary_person_id = #{colleague.id} AND year(date) = #{year} AND month(date) = #{month} AND local_type = 'outcome_salary'" )
    summ = 0
    finances.each do |fin|
      summ += fin.summ
    end
    summ ||= 0
  end
end
