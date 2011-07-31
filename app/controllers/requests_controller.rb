# encoding: UTF-8
class RequestsController < ApplicationController

  include ::MyHelpers::Date

  before_filter do
    #Передача params в модель
    #для решения проблемы с ,/. в дробных числах
    Request.params = params[:request]
  end

  # GET /requests
  def index
    @requests = Request.paginate :page => params[:page], :order => 'id DESC'
  end

  # GET /requests/1
  def show
    @request = Request.find(params[:id])

    #извлечение "постоянных" первых точек погрузки и разгрузки
    @lp = @request.loading_points.find(:first, :conditions => 'point_number = 1')
    @up = @request.unloading_points.find(:first, :conditions => 'point_number = 1')

    #получение всех остальных точек погрузки и разгрузки
    (2..9).each do |num|
      instance_variable_set( "@lp#{num}".to_sym, @request.loading_points.find(:first, :conditions => "point_number = #{num}") )
      instance_variable_set( "@up#{num}".to_sym, @request.unloading_points.find(:first, :conditions => "point_number = #{num}") )
    end
  end

  # GET /requests/new
  def new
    @request = Request.new

    #Создание 9 пустых связанных с заявкой точек погрузки и разгрузки
    #для формирования формы
    9.times  do
      @request.loading_points.build
      @request.unloading_points.build
    end
  end

  # GET /requests/1/edit
  def edit
    @request = Request.find(params[:id])

    #извлечение "постоянных" первых точек погрузки и разгрузки
    @lp = @request.loading_points.find(:first, :conditions => 'point_number = 1')
    @up = @request.unloading_points.find(:first, :conditions => 'point_number = 1')

    #получение всех остальных точек погрузки и разгрузки
    (2..9).each do |num|
      instance_variable_set( "@lp#{num}".to_sym, @request.loading_points.find(:first, :conditions => "point_number = #{num}") )
      instance_variable_set( "@up#{num}".to_sym, @request.unloading_points.find(:first, :conditions => "point_number = #{num}") )
    end
  end

  # POST /requests
  def create

    #Присваивание номеров точкам погрузки/разгрузки
    (0..9).each do |num|
       if params[:request]['loading_points_attributes']["#{num}".to_sym]
         num == 0 ?  number = 1 : number = num
         params[:request]['loading_points_attributes']["#{num}".to_sym]['point_number'] = (number).to_s
         params[:request]['unloading_points_attributes']["#{num}".to_sym]['point_number'] = (number).to_s
       end
    end

    #Установка текущего пользователя владельцем документа
    params[:request]['user_id'] = current_user

    @request = Request.new(params[:request])

    if @request.save
      #Установка значений в поля штрафных санкций из карточек соотв. компаний
      @request.customer_responsibility_car_deny_price      = @request.customer_company.respons_refuse_loading_day
      @request.customer_responsibility_prostoy_price       = @request.customer_company.respons_idle_excessively_percent
      @request.customer_responsibility_payment_late_price  = @request.customer_company.respons_payment_late

      @request.carrier_responsibility_car_deny_price       = @request.carrier_company.respons_undeliver_transport_loading
      @request.carrier_responsibility_late_price           = @request.carrier_company.respons_transport_late_loading_percent
      @request.carrier_responsibility_delivery_late_price  = @request.carrier_company.respons_transport_late_destination_percent
      @request.carrier_responsibility_document_late_price  = @request.carrier_company.respons_document_late
      @request.save

      redirect_to({:action => 'index'}, {:notice => 'Заявка добавлена'})
    else
      render :action => "new"
    end
  end

  def create_sas

    #Присваивание номеров точкам погрузки/разгрузки
    (0..9).each do |num|
       if params[:request]['loading_points_attributes']["#{num}".to_sym]
         num == 0 ?  number = 1 : number = num
         params[:request]['loading_points_attributes']["#{num}".to_sym]['point_number'] = (number).to_s
         params[:request]['unloading_points_attributes']["#{num}".to_sym]['point_number'] = (number).to_s
       end
    end

    #Установка текущего пользователя владельцем документа
    params[:request]['user_id'] = current_user

    params[:request].delete('id')

    @request = Request.new(params[:request])

    if @request.save
      redirect_to({:action => 'index'}, {:notice => 'Заявка добавлена'})
    else
      render :action => "new"
    end
  end

  # PUT /requests/1
  def update
    @request = Request.find(params[:id])

    #Обработка checkbox'a is_finished
    if !params[:request][:is_finished]
      params[:request][:is_finished] = 0
    end

    #Обработка checkbox'a отказ от ТС заказчик
    if !params[:request][:customer_responsibility_car_deny_true]
      params[:request][:customer_responsibility_car_deny_true] = 0
    end

    #Обработка checkbox'a отказ от ТС перевозчик
    if !params[:request][:carrier_responsibility_car_deny_true]
      params[:request][:carrier_responsibility_car_deny_true] = 0
    end

    #Удаление всех связанных с заявкой точек погрузки
    loading_points = @request.loading_points
    loading_points.each do |lp|
      lp.destroy
    end

    #Удаление всех связанных с заявкой точек разгрузки
    unloading_points = @request.unloading_points
    unloading_points.each do |up|
      up.destroy
    end

    #Присвоение точкам погрузки\разгрузки порядковых номеров
    #в соответствии с номером формы
    (0..9).each do |num|
       if params[:request]['loading_points_attributes']["#{num}".to_sym]
         num == 0 ?  number = 1 : number = num
         params[:request]['loading_points_attributes']["#{num}".to_sym]['point_number'] = (number).to_s
         params[:request]['unloading_points_attributes']["#{num}".to_sym]['point_number'] = (number).to_s
       end
    end

    if @request.update_attributes(params[:request])
      redirect_to(@request, :notice => 'Изменения внесены')
    else
      render :action => "edit"
    end
  end

  # DELETE /requests/1
  def destroy
    @request = Request.find(params[:id])
    @request.destroy

    redirect_to(requests_url)
  end

  # Создание заявки/договора заявки для заказчика
  def customer_document

    request = Request.find(params[:id])

    #Определение путей к файлам
    documents_path = "#{RAILS_ROOT}/word_docs"

    #Заявка/Договор-заявка
    if request.request_type == 'request'
      template = "#{documents_path}/request_for_customer"
    elsif request.request_type == 'contract_request'
      template = "#{documents_path}/contract_bid_for_customer"
    end

    #Создание временной директории с копией выбранного шаблона
    uniq_code = rand(10000)
    dir_name = "#{documents_path}/temp_document#{uniq_code}"
    %x[cp -r #{template} #{dir_name}]

    counter = 0
    File.open("#{dir_name}/word/document_new.xml",'w') do |out_file|
      File.open("#{dir_name}/word/document.xml",'r').each do |line|
        counter = counter + 1
        line.gsub!(/«orderNum»/,"#{request.id}/З-#{request.created_at.strftime('%Y')}" )
        line.gsub!(/«orderDay»/,"#{request.created_at.strftime('%d')}" )
        line.gsub!(/«orderMonth»/,"#{month(request.created_at.strftime('%-m').to_i)}" )
        line.gsub!(/«orderYear»/,"#{request.created_at.strftime('%Y')}" )

        if request.customer_company.opf.opf == "ИП"
          line.gsub!(/«customerFacePodp»/, '' )
        else
          line.gsub!(/«customerFacePodp»/, request.customer_company.company_face.company_face_podp )
        end
        line.gsub!(/customerCompanyTitle/, request.customer_company.name )

        line.gsub!(/«customerFace»/, request.customer_company.company_face.company_face )
        line.gsub!(/«customerManager»/, request.customer_company.manager_name )
        line.gsub!(/«nameR»/, request.customer_company.manager_name )
        line.gsub!(/customerOperatesBasis/, request.customer_company.operates_basis )
        line.gsub!(/«carType»/, request.car.car_type.car_type )
        line.gsub!(/«carCount»/, '1' )
        if request.evropallet
          line.gsub!(/«ePallet»/, request.evropallet.to_s )
        elsif request.bigpallet
          line.gsub!(/«ePallet»/, request.bigpallet.to_s )
        elsif !request.bigpallet && !request.evropallet
          line.gsub!(/«ePallet»/, '--')
        end
        request.belts_count ? line.gsub!(/«belts»/, request.belts_count.to_s)       : line.gsub!(/«belts»/, '--')
        request.weight      ? line.gsub!(/«weight»/, request.weight.to_s)           : line.gsub!(/«weight»/, '--')
        request.volume      ? line.gsub!(/«volume»/, request.volume.to_s)           : line.gsub!(/«volume»/, '--')
        request.temperature ? line.gsub!(/«temperature»/, request.temperature) : line.gsub!(/«temperature»/, '--')
        if request.height && request.length && request.width
          line.gsub!(/«cargoGabarits»/, request.cargo_gabarits)
        else
          line.gsub!(/«cargoGabarits»/, "----------------")
        end
        if request.car.dimensions_height && request.car.dimensions_length && request.car.dimensions_width
          line.gsub!(/«carGabarits»/, request.car.car_gabarits)
        else
          line.gsub!(/«carGabarits»/, "----------------")
        end
        line.gsub!(/«item»/, request.item )
        request.car.car_tonnage.car_tonnage ? line.gsub!(/«gruzpod»/, request.car.car_tonnage.car_tonnage.to_s) : line.gsub!(/«gruzpod»/, '--')
        request.other_conditions            ? line.gsub!(/«otherConditions»/, request.other_conditions)         : line.gsub!(/«otherConditions»/, '---------')
        line.gsub!(/«cargoClass»/, request.cargo_classification.classification )

        #Условия погрузки
        loading_conditions = ''
        if request.loading_up
          loading_conditions = loading_conditions+'верх '
        end
        if request.loading_down
          loading_conditions = loading_conditions+'зад '
        end
        if request.loading_side
          loading_conditions = loading_conditions+'бок '
        end
        loading_conditions.size > 1 ? line.gsub!(/«loadingConditions»/,loading_conditions) : line.gsub!(/«loadingConditions»/, '--------')

        #Точки погрузки/разгрузки
        f_lp = request.loading_points.find(:first, :conditions => 'point_number = 1')
        line.gsub!(/«ld1»/, f_lp.date.strftime("%d-%m-%Y") )
        line.gsub!(/«lt1»/, f_lp.time )
        line.gsub!(/«shipper1»/, f_lp.shipper )
        line.gsub!(/«loadingAddress1»/, f_lp.address )
        line.gsub!(/«loadingContactPerson1»/, f_lp.contact_person )
        line.gsub!(/«loadingContactPhone1»/, f_lp.phone )
        line.gsub!(/«loadingContactPhoneWork1»/, f_lp.phone_work )

        f_up = request.unloading_points.find(:first, :conditions => 'point_number = 1')
        line.gsub!(/«uld1»/, f_up.date.strftime("%d-%m-%Y") )
        line.gsub!(/«ult1»/, f_up.time )
        line.gsub!(/«consignee1»/, f_up.consignee )
        line.gsub!(/«unloadingAddress1»/, f_up.address )
        line.gsub!(/«unloadingContactPerson1»/, f_up.contact_person )
        line.gsub!(/«unloadingContactPhone1»/, f_up.phone )
        line.gsub!(/«unloadingContactPhoneWork1»/, f_up.phone_work )

        points = {}
        (2..9).each do |num|
          lp = request.loading_points.find(:first, :conditions => "point_number = #{num}")
          up = request.unloading_points.find(:first, :conditions => "point_number = #{num}")
          if lp
            line.gsub!(/«ld#{num}»/, lp.date.strftime("%d-%m-%Y"))
            line.gsub!(/«lt#{num}»/, lp.time)
            line.gsub!(/«shipper#{num}»/, lp.shipper)
            line.gsub!(/«loadingAddress#{num}»/, lp.address)
            line.gsub!(/«loadingContactPerson#{num}»/, lp.contact_person)
            line.gsub!(/«loadingContactPhone#{num}»/, lp.phone)
            line.gsub!(/«loadingContactPhoneWork#{num}»/, lp.phone_work)
          else
            line.gsub!(/«ld#{num}»/, '------')
            line.gsub!(/«lt#{num}»/, '----')
            line.gsub!(/«shipper#{num}»/, '--------------------------------------------')
            line.gsub!(/«loadingAddress#{num}»/, '--------------------------------------------')
            line.gsub!(/«loadingContactPerson#{num}»/, '--------------------------------------------')
            line.gsub!(/«loadingContactPhone#{num}»/, '--------------------------------------------')
            line.gsub!(/«loadingContactPhoneWork#{num}»/, '--------------------------------------------')
          end

          if up
            line.gsub!(/«uld#{num}»/, up.date.strftime("%d-%m-%Y"))
            line.gsub!(/«ult#{num}»/, up.time)
            line.gsub!(/«consignee#{num}»/, up.consignee)
            line.gsub!(/«unloadingAddress#{num}»/, up.address)
            line.gsub!(/«unloadingContactPerson#{num}»/, up.contact_person)
            line.gsub!(/«unloadingContactPhone#{num}»/, up.phone)
            line.gsub!(/«unloadingContactPhoneWork#{num}»/, up.phone_work)
          else
            line.gsub!(/«uld#{num}»/, '------')
            line.gsub!(/«ult#{num}»/, '----')
            line.gsub!(/«consignee#{num}»/, '--------------------------------------------')
            line.gsub!(/«unloadingAddress#{num}»/, '--------------------------------------------')
            line.gsub!(/«unloadingContactPerson#{num}»/, '--------------------------------------------')
            line.gsub!(/«unloadingContactPhone#{num}»/, '--------------------------------------------')
            line.gsub!(/«unloadingContactPhoneWork#{num}»/, '--------------------------------------------')
          end
        end

        #СУММА К ОПЛАТЕ
        #Оплата по ставке 37000 (тридцать семь тысяч) руб. или (повременная: 5+1 по 900руб./час)
        if request.customer_rate_summ
          line.gsub!(/«payment»/, "Оплата по ставке #{request.customer_rate_summ} (#{RuPropisju.propisju(request.customer_rate_summ)}) руб.")
        else
          line.gsub!(/«payment»/, "Повременная: #{request.customer_rate_hours}+#{request.customer_rate_podacha_hours} по #{request.customer_rate_hour_price} руб./час")
        end

        line.gsub!(/paymentPlus/, request.customer_rate_sverh_price.to_s)
        line.gsub!(/«rateHours»/, request.customer_rate_hours.to_s)
        line.gsub!(/«prepayment»/, request.customer_prepayment.to_s)
        line.gsub!(/«summToPay»/, request.customer_summ_to_pay.to_s)
        line.gsub!(/«paymentWay»/, request.customer_payment_method.payment_method)
        line.gsub!(/«paymentType»/, request.customer_payment_way.payment_way)
        request.customer_maturity              ? line.gsub!(/«paymentTerm»/, request.customer_maturity.to_s)             : line.gsub!(/«paymentTerm»/, '----------')
        request.customer_documents_return_term ? line.gsub!(/docRetTerm/, request.customer_documents_return_term.to_s) : line.gsub!(/docRetTerm/, '----------')
        line.gsub!(/«documentsForPayment»/, request.customer_payment_doc.payment_doc)


        #ДОПОЛНИТЕЛЬНЫЕ УСЛУГИ

        dop_usl = {}

        if request.customer_dop_prab_price
          dop_usl[1] =       {'dopName'    => 'Переработка'}
          dop_usl[1].update( {'dopCount'   => request.customer_dop_prab_count } )
          dop_usl[1].update( {'dopPrice'   => request.customer_dop_prab_price } )
          dop_usl[1].update( {'dopMeasure' => 'час.' } )
          dop_usl[1].update( {'dopRub'     => 'руб.' } )
        end

        if request.customer_dop_dop_tochka_pogr_price
          dop_usl[2] =       {'dopName'    => 'Д/Т погрузки'}
          dop_usl[2].update( {'dopCount'   => request.customer_dop_dop_tochka_pogr_count } )
          dop_usl[2].update( {'dopPrice'   => request.customer_dop_dop_tochka_pogr_price } )
          dop_usl[2].update( {'dopMeasure' => 'точ.' } )
          dop_usl[2].update( {'dopRub'     => 'руб.' } )
        end

        if request.customer_dop_dop_tochka_razgr_price
          dop_usl[3] =       {'dopName'    => 'Д/Т разгрузки'}
          dop_usl[3].update( {'dopCount'   => request.customer_dop_dop_tochka_razgr_count } )
          dop_usl[3].update( {'dopPrice'   => request.customer_dop_dop_tochka_razgr_price } )
          dop_usl[3].update( {'dopMeasure' => 'точ.' } )
          dop_usl[3].update( {'dopRub'     => 'руб.' } )
        end

        if request.customer_dop_vozvr_price
          dop_usl[4] =       {'dopName'    => 'Возврат груза'}
          dop_usl[4].update( {'dopCount'   => request.customer_dop_vozvr_count } )
          dop_usl[4].update( {'dopPrice'   => request.customer_dop_vozvr_price } )
          dop_usl[4].update( {'dopMeasure' => 'тариф.' } )
          dop_usl[4].update( {'dopRub'     => 'руб.' } )
        end

        if request.customer_dop_pereg_price
          dop_usl[5] =       {'dopName'    => 'Перегруз'}
          dop_usl[5].update( {'dopCount'   => request.customer_dop_pereg_count } )
          dop_usl[5].update( {'dopPrice'   => request.customer_dop_pereg_price } )
          dop_usl[5].update( {'dopMeasure' => 'кг.' } )
          dop_usl[5].update( {'dopRub'     => 'руб.' } )
        end

        if request.customer_dop_night_stay_price
          dop_usl[6] =       {'dopName'    => 'Ночная стоянка'}
          dop_usl[6].update( {'dopCount'   => request.customer_dop_night_stay_count } )
          dop_usl[6].update( {'dopPrice'   => request.customer_dop_night_stay_price } )
          dop_usl[6].update( {'dopMeasure' => 'ночь' } )
          dop_usl[6].update( {'dopRub'     => 'руб.' } )
        end

        if request.customer_dop_mezgorod_price
          dop_usl[7] =       {'dopName'    => 'Межгород'}
          dop_usl[7].update( {'dopCount'   => request.customer_dop_mezgorod_count } )
          dop_usl[7].update( {'dopPrice'   => request.customer_dop_mezgorod_price } )
          dop_usl[7].update( {'dopMeasure' => 'км.' } )
          dop_usl[7].update( {'dopRub'     => 'руб.' } )
        end

        if request.customer_dop_rastentovka_price
          dop_usl[8] =       {'dopName'    => 'Растентовка'}
          dop_usl[8].update( {'dopCount'   => request.customer_dop_rastentovka_count } )
          dop_usl[8].update( {'dopPrice'   => request.customer_dop_rastentovka_price } )
          dop_usl[8].update( {'dopMeasure' => 'рейс' } )
          dop_usl[8].update( {'dopRub'     => 'руб.' } )
        end

        if request.customer_dop_soprov_price
          dop_usl[9] =       { 'dopName'   => 'Сопровождение'}
          dop_usl[9].update( {'dopCount'   => request.customer_dop_soprov_count } )
          dop_usl[9].update( {'dopPrice'   => request.customer_dop_soprov_price } )
          dop_usl[9].update( {'dopMeasure' => 'рейс' } )
          dop_usl[9].update( {'dopRub'     => 'руб.' } )
        end

        if request.customer_dop_negabarit_price
          dop_usl[10] =       {'dopName'    => 'Негабарит'}
          dop_usl[10].update( {'dopCount'   => request.customer_dop_negabarit_count } )
          dop_usl[10].update( {'dopPrice'   => request.customer_dop_negabarit_price } )
          dop_usl[10].update( {'dopMeasure' => 'рейс' } )
          dop_usl[10].update( {'dopRub'     => 'руб.' } )
        end

        if request.customer_dop_gruzch_price
          dop_usl[11] =       {'dopName'    => 'Грузчики'}
          dop_usl[11].update( {'dopCount'   => request.customer_dop_gruzch_count } )
          dop_usl[11].update( {'dopPrice'   => request.customer_dop_gruzch_price } )
          dop_usl[11].update( {'dopMeasure' => 'рейс' } )
          dop_usl[11].update( {'dopRub'     => 'руб.' } )
        end

        if dop_usl.size > 0
          i = 1
          dop_usl.each do |k,v|
            line.gsub!(/dopName#{i}/,    v['dopName'])
            line.gsub!(/dopCount#{i}/,   v['dopCount'].to_s)
            line.gsub!(/dopPrice#{i}/,   v['dopPrice'].to_s)
            line.gsub!(/dopMeasure#{i}/, v['dopMeasure'])
            line.gsub!(/dopRub#{i}/,     v['dopRub'])
            i = i+1
          end
        end

        if dop_usl.size > 0
          dop_count = dop_usl.size
        else
          dop_count = 0
        end

        j = dop_count + 1

        if dop_count < 4
          procherk_count = 4 - dop_count
          procherk_count.times do
            line.gsub!(/dopName#{j}/,    '----------')
            line.gsub!(/dopCount#{j}/,   '----------')
            line.gsub!(/dopPrice#{j}/,   '----------')
            line.gsub!(/dopMeasure#{j}/, '----------')
            line.gsub!(/dopRub#{j}/,     '----------')
            j = j+1
          end
        end

        #Данные автомобиля и водителя
        request.car.state_number           ? line.gsub!(/«carNumber»/, request.car.state_number)              : line.gsub!(/«carNumber»/, '----------')
        request.car.body_state_number      ? line.gsub!(/«trailerNumber»/, request.car.body_state_number)     : line.gsub!(/«trailerNumber»/, '----------')
        request.user.mobile_phone_business ? line.gsub!(/«managerPhone»/, request.user.mobile_phone_business) : line.gsub!(/«managerPhone»/, '----------')
        line.gsub!(/«carBrand»/, request.car.car_model.car_model)
        line.gsub!(/«driverName»/, request.driver.full_name)
        line.gsub!(/«driverPassportData»/, request.driver.passport_data)
        line.gsub!(/driverRegistrationPlace/, request.driver.registration_place)

        #Ответственность сторон
        line.gsub!(/«responsTransReplacement»/, request.customer_company.respons_transport_replacement_req)
        line.gsub!(/«responsCargoCompensation»/, request.customer_company.respons_compensation_for_damage)

        line.gsub!(/«carrierNepodResp»/, request.customer_company.respons_undeliver_transport_loading.to_s)
        line.gsub!(/«lateHours»/,        request.customer_company.respons_transport_late_loading_hours.to_s)
        line.gsub!(/«carrierOpozdResp»/, request.customer_company.respons_transport_late_loading_percent.to_s)
        line.gsub!(/«prosrHours»/,       request.customer_company.respons_transport_late_destination_hours.to_s)
        line.gsub!(/«carrierProsrResp»/, request.customer_company.respons_transport_late_destination_percent.to_s)
        line.gsub!(/«custDocLate»/,      request.customer_company.respons_document_late.to_s)
        line.gsub!(/«custOtkResp»/,      request.customer_company.respons_refuse_loading_day.to_s)
        line.gsub!(/prostoyHour/,        request.customer_company.respons_idle_excessively_hours.to_s)
        line.gsub!(/custProstResp/,      request.customer_company.respons_idle_excessively_percent.to_s)
        line.gsub!(/«custProsrPaym»/,    request.customer_company.respons_payment_late.to_s)

        #Реквизиты и подписи сторон
        line.gsub!(/«legalAddress»/,          request.customer_company.legal_address)
        line.gsub!(/«actualAddress»/,         request.customer_company.actual_address)
        line.gsub!(/«ogrn»/,                  request.customer_company.ogrn)
        line.gsub!(/«inn_kpp»/,               "#{request.customer_company.inn} / #{request.customer_company.kpp}")
        line.gsub!(/«okpo»/,                  request.customer_company.okpo)
        line.gsub!(/«phone»/,                 request.customer_company.phone)
        line.gsub!(/«fax»/,                   request.customer_company.fax)
        line.gsub!(/«email»/,                 request.customer_company.email)
        line.gsub!(/«currentAccount»/,        request.customer_company.current_account)
        line.gsub!(/«bank»/,                  request.customer_company.bank)
        line.gsub!(/«correspondentAccount»/, request.customer_company.correspondent_account)
        line.gsub!(/«bankBik»/,               request.customer_company.bik)
        request.customer_company.bank_inn     ? line.gsub!(/«bankInn»/, request.customer_company.bank_inn) : line.gsub!(/«bankInn»/, '---')
        line.gsub!(/«/, '' )
        line.gsub!(/»/, '' )
        out_file.print line
      end
    end

    %x[mv #{dir_name}/word/document_new.xml #{dir_name}/word/document.xml]
    %x[cd #{dir_name} && zip -r ../result.docx . && cd ..]
    %x[rm -rf #{dir_name}]

    #Задание имени файла
    if request.request_type == 'request'
      file_name = "Заявка_№#{request.id}-З-#{request.created_at.strftime('%Y_%m_%d')}.docx"
    elsif request.request_type == 'contract_request'
      file_name = "Договор-заявка_№#{request.id}-З-#{request.created_at.strftime('%Y_%m_%d')}.docx"
    end

    send_file "#{documents_path}/result.docx", :type=>'application/msword', :filename => file_name

  end

  # Создание заявки/договора заявки для перевозчика
  def carrier_document

    request = Request.find(params[:id])

    #Определение путей к файлам
    documents_path = "#{RAILS_ROOT}/word_docs"

    #Заявка/Договор-заявка
    if request.request_type == 'request'
      template = "#{documents_path}/request_for_carrier"
    elsif request.request_type == 'contract_request'
      template = "#{documents_path}/contract_bid_for_carrier"
    end

    #Создание временной директории с копией выбранного шаблона
    uniq_code = rand(10000)
    dir_name = "#{documents_path}/temp_document#{uniq_code}"
    %x[cp -r #{template} #{dir_name}]

    counter = 0
    File.open("#{dir_name}/word/document_new.xml",'w') do |out_file|
      File.open("#{dir_name}/word/document.xml",'r').each do |line|
        counter = counter + 1
        line.gsub!(/«orderNum»/,"#{request.id}/З-#{request.created_at.strftime('%Y')}" )
        line.gsub!(/«orderDay»/,"#{request.created_at.strftime('%d')}" )
        line.gsub!(/«orderMonth»/,"#{month(request.created_at.strftime('%-m').to_i)}" )
        line.gsub!(/«orderYear»/,"#{request.created_at.strftime('%Y')}" )

        if request.carrier_company.opf.opf == "ИП"
          line.gsub!(/«carrierFacePodp»/, '' )
        else
          line.gsub!(/«carrierFacePodp»/, request.carrier_company.company_face.company_face_podp )
        end
        line.gsub!(/carrierCompanyTitle/, request.carrier_company.name )

        line.gsub!(/«carrierFace»/, request.carrier_company.company_face.company_face )
        line.gsub!(/«carrierManager»/, request.carrier_company.manager_name )
        line.gsub!(/«nameR»/, request.carrier_company.manager_name )
        line.gsub!(/carrierOperatesBasis/, request.carrier_company.operates_basis )
        line.gsub!(/«carType»/, request.car.car_type.car_type )
        line.gsub!(/«carCount»/, '1' )
        if request.evropallet
          line.gsub!(/«ePallet»/, request.evropallet.to_s )
        elsif request.bigpallet
          line.gsub!(/«ePallet»/, request.bigpallet.to_s )
        elsif !request.bigpallet && !request.evropallet
          line.gsub!(/«ePallet»/, '--')
        end
        request.belts_count ? line.gsub!(/«belts»/, request.belts_count.to_s)       : line.gsub!(/«belts»/, '--')
        request.weight      ? line.gsub!(/«weight»/, request.weight.to_s)           : line.gsub!(/«weight»/, '--')
        request.volume      ? line.gsub!(/«volume»/, request.volume.to_s)           : line.gsub!(/«volume»/, '--')
        request.temperature ? line.gsub!(/«temperature»/, request.temperature) : line.gsub!(/«temperature»/, '--')
        if request.height && request.length && request.width
          line.gsub!(/«cargoGabarits»/, request.cargo_gabarits)
        else
          line.gsub!(/«cargoGabarits»/, "----------------")
        end
        if request.car.dimensions_height && request.car.dimensions_length && request.car.dimensions_width
          line.gsub!(/«carGabarits»/, request.car.car_gabarits)
        else
          line.gsub!(/«carGabarits»/, "----------------")
        end
        line.gsub!(/«item»/, request.item )
        request.car.car_tonnage.car_tonnage ? line.gsub!(/«gruzpod»/, request.car.car_tonnage.car_tonnage.to_s) : line.gsub!(/«gruzpod»/, '--')
        request.other_conditions            ? line.gsub!(/«otherConditions»/, request.other_conditions)         : line.gsub!(/«otherConditions»/, '---------')
        line.gsub!(/«cargoClass»/, request.cargo_classification.classification )

        #Условия погрузки
        loading_conditions = ''
        if request.loading_up
          loading_conditions = loading_conditions+'верх '
        end
        if request.loading_down
          loading_conditions = loading_conditions+'зад '
        end
        if request.loading_side
          loading_conditions = loading_conditions+'бок '
        end
        loading_conditions.size > 1 ? line.gsub!(/«loadingConditions»/,loading_conditions) : line.gsub!(/«loadingConditions»/, '--------')

        #Точки погрузки/разгрузки
        f_lp = request.loading_points.find(:first, :conditions => 'point_number = 1')
        line.gsub!(/«ld1»/, f_lp.date.strftime("%d-%m-%Y") )
        line.gsub!(/«lt1»/, f_lp.time )
        line.gsub!(/«shipper1»/, f_lp.shipper )
        line.gsub!(/«loadingAddress1»/, f_lp.address )
        line.gsub!(/«loadingContactPerson1»/, f_lp.contact_person )
        line.gsub!(/«loadingContactPhone1»/, f_lp.phone )
        line.gsub!(/«loadingContactPhoneWork1»/, f_lp.phone_work )

        f_up = request.unloading_points.find(:first, :conditions => 'point_number = 1')
        line.gsub!(/«uld1»/, f_up.date.strftime("%d-%m-%Y") )
        line.gsub!(/«ult1»/, f_up.time )
        line.gsub!(/«consignee1»/, f_up.consignee )
        line.gsub!(/«unloadingAddress1»/, f_up.address )
        line.gsub!(/«unloadingContactPerson1»/, f_up.contact_person )
        line.gsub!(/«unloadingContactPhone1»/, f_up.phone )
        line.gsub!(/«unloadingContactPhoneWork1»/, f_up.phone_work )

        points = {}
        (2..9).each do |num|
          lp = request.loading_points.find(:first, :conditions => "point_number = #{num}")
          up = request.unloading_points.find(:first, :conditions => "point_number = #{num}")
          if lp
            line.gsub!(/«ld#{num}»/, lp.date.strftime("%d-%m-%Y"))
            line.gsub!(/«lt#{num}»/, lp.time)
            line.gsub!(/«shipper#{num}»/, lp.shipper)
            line.gsub!(/«loadingAddress#{num}»/, lp.address)
            line.gsub!(/«loadingContactPerson#{num}»/, lp.contact_person)
            line.gsub!(/«loadingContactPhone#{num}»/, lp.phone)
            line.gsub!(/«loadingContactPhoneWork#{num}»/, lp.phone_work)
          else
            line.gsub!(/«ld#{num}»/, '------')
            line.gsub!(/«lt#{num}»/, '----')
            line.gsub!(/«shipper#{num}»/, '--------------------------------------------')
            line.gsub!(/«loadingAddress#{num}»/, '--------------------------------------------')
            line.gsub!(/«loadingContactPerson#{num}»/, '--------------------------------------------')
            line.gsub!(/«loadingContactPhone#{num}»/, '--------------------------------------------')
            line.gsub!(/«loadingContactPhoneWork#{num}»/, '--------------------------------------------')
          end

          if up
            line.gsub!(/«uld#{num}»/, up.date.strftime("%d-%m-%Y"))
            line.gsub!(/«ult#{num}»/, up.time)
            line.gsub!(/«consignee#{num}»/, up.consignee)
            line.gsub!(/«unloadingAddress#{num}»/, up.address)
            line.gsub!(/«unloadingContactPerson#{num}»/, up.contact_person)
            line.gsub!(/«unloadingContactPhone#{num}»/, up.phone)
            line.gsub!(/«unloadingContactPhoneWork#{num}»/, up.phone_work)
          else
            line.gsub!(/«uld#{num}»/, '------')
            line.gsub!(/«ult#{num}»/, '----')
            line.gsub!(/«consignee#{num}»/, '--------------------------------------------')
            line.gsub!(/«unloadingAddress#{num}»/, '--------------------------------------------')
            line.gsub!(/«unloadingContactPerson#{num}»/, '--------------------------------------------')
            line.gsub!(/«unloadingContactPhone#{num}»/, '--------------------------------------------')
            line.gsub!(/«unloadingContactPhoneWork#{num}»/, '--------------------------------------------')
          end
        end

        #СУММА К ОПЛАТЕ
        #Оплата по ставке 37000 (тридцать семь тысяч) руб. или (повременная: 5+1 по 900руб./час)
        if request.carrier_rate_summ
          line.gsub!(/«payment»/, "Оплата по ставке #{request.carrier_rate_summ} (#{RuPropisju.propisju(request.carrier_rate_summ)}) руб.")
        else
          line.gsub!(/«payment»/, "Повременная: #{request.carrier_rate_hours}+#{request.carrier_rate_podacha_hours} по #{request.carrier_rate_hour_price} руб./час")
        end

        line.gsub!(/paymentPlus/, request.carrier_rate_sverh_price.to_s)
        line.gsub!(/«rateHours»/, request.carrier_rate_hours.to_s)
        line.gsub!(/«prepayment»/, request.carrier_prepayment.to_s)
        line.gsub!(/«summToPay»/, request.carrier_summ_to_pay.to_s)
        line.gsub!(/«paymentWay»/, request.carrier_payment_method.payment_method)
        line.gsub!(/«paymentType»/, request.carrier_payment_way.payment_way)
        request.carrier_maturity              ? line.gsub!(/«paymentTerm»/, request.carrier_maturity.to_s)             : line.gsub!(/«paymentTerm»/, '----------')
        request.carrier_documents_return_term ? line.gsub!(/docRetTerm/, request.carrier_documents_return_term.to_s) : line.gsub!(/docRetTerm/, '----------')
        line.gsub!(/«documentsForPayment»/, request.carrier_payment_doc.payment_doc)


        #ДОПОЛНИТЕЛЬНЫЕ УСЛУГИ

        dop_usl = {}

        if request.carrier_dop_prab_price
          dop_usl[1] =       {'dopName'    => 'Переработка'}
          dop_usl[1].update( {'dopCount'   => request.carrier_dop_prab_count } )
          dop_usl[1].update( {'dopPrice'   => request.carrier_dop_prab_price } )
          dop_usl[1].update( {'dopMeasure' => 'час.' } )
          dop_usl[1].update( {'dopRub'     => 'руб.' } )
        end

        if request.carrier_dop_dop_tochka_pogr_price
          dop_usl[2] =       {'dopName'    => 'Д/Т погрузки'}
          dop_usl[2].update( {'dopCount'   => request.carrier_dop_dop_tochka_pogr_count } )
          dop_usl[2].update( {'dopPrice'   => request.carrier_dop_dop_tochka_pogr_price } )
          dop_usl[2].update( {'dopMeasure' => 'точ.' } )
          dop_usl[2].update( {'dopRub'     => 'руб.' } )
        end

        if request.carrier_dop_dop_tochka_razgr_price
          dop_usl[3] =       {'dopName'    => 'Д/Т разгрузки'}
          dop_usl[3].update( {'dopCount'   => request.carrier_dop_dop_tochka_razgr_count } )
          dop_usl[3].update( {'dopPrice'   => request.carrier_dop_dop_tochka_razgr_price } )
          dop_usl[3].update( {'dopMeasure' => 'точ.' } )
          dop_usl[3].update( {'dopRub'     => 'руб.' } )
        end

        if request.carrier_dop_vozvr_price
          dop_usl[4] =       {'dopName'    => 'Возврат груза'}
          dop_usl[4].update( {'dopCount'   => request.carrier_dop_vozvr_count } )
          dop_usl[4].update( {'dopPrice'   => request.carrier_dop_vozvr_price } )
          dop_usl[4].update( {'dopMeasure' => 'тариф.' } )
          dop_usl[4].update( {'dopRub'     => 'руб.' } )
        end

        if request.carrier_dop_pereg_price
          dop_usl[5] =       {'dopName'    => 'Перегруз'}
          dop_usl[5].update( {'dopCount'   => request.carrier_dop_pereg_count } )
          dop_usl[5].update( {'dopPrice'   => request.carrier_dop_pereg_price } )
          dop_usl[5].update( {'dopMeasure' => 'кг.' } )
          dop_usl[5].update( {'dopRub'     => 'руб.' } )
        end

        if request.carrier_dop_night_stay_price
          dop_usl[6] =       {'dopName'    => 'Ночная стоянка'}
          dop_usl[6].update( {'dopCount'   => request.carrier_dop_night_stay_count } )
          dop_usl[6].update( {'dopPrice'   => request.carrier_dop_night_stay_price } )
          dop_usl[6].update( {'dopMeasure' => 'ночь' } )
          dop_usl[6].update( {'dopRub'     => 'руб.' } )
        end

        if request.carrier_dop_mezgorod_price
          dop_usl[7] =       {'dopName'    => 'Межгород'}
          dop_usl[7].update( {'dopCount'   => request.carrier_dop_mezgorod_count } )
          dop_usl[7].update( {'dopPrice'   => request.carrier_dop_mezgorod_price } )
          dop_usl[7].update( {'dopMeasure' => 'км.' } )
          dop_usl[7].update( {'dopRub'     => 'руб.' } )
        end

        if request.carrier_dop_rastentovka_price
          dop_usl[8] =       {'dopName'    => 'Растентовка'}
          dop_usl[8].update( {'dopCount'   => request.carrier_dop_rastentovka_count } )
          dop_usl[8].update( {'dopPrice'   => request.carrier_dop_rastentovka_price } )
          dop_usl[8].update( {'dopMeasure' => 'рейс' } )
          dop_usl[8].update( {'dopRub'     => 'руб.' } )
        end

        if request.carrier_dop_soprov_price
          dop_usl[9] =       { 'dopName'   => 'Сопровождение'}
          dop_usl[9].update( {'dopCount'   => request.carrier_dop_soprov_count } )
          dop_usl[9].update( {'dopPrice'   => request.carrier_dop_soprov_price } )
          dop_usl[9].update( {'dopMeasure' => 'рейс' } )
          dop_usl[9].update( {'dopRub'     => 'руб.' } )
        end

        if request.carrier_dop_negabarit_price
          dop_usl[10] =       {'dopName'    => 'Негабарит'}
          dop_usl[10].update( {'dopCount'   => request.carrier_dop_negabarit_count } )
          dop_usl[10].update( {'dopPrice'   => request.carrier_dop_negabarit_price } )
          dop_usl[10].update( {'dopMeasure' => 'рейс' } )
          dop_usl[10].update( {'dopRub'     => 'руб.' } )
        end

        if request.carrier_dop_gruzch_price
          dop_usl[11] =       {'dopName'    => 'Грузчики'}
          dop_usl[11].update( {'dopCount'   => request.carrier_dop_gruzch_count } )
          dop_usl[11].update( {'dopPrice'   => request.carrier_dop_gruzch_price } )
          dop_usl[11].update( {'dopMeasure' => 'рейс' } )
          dop_usl[11].update( {'dopRub'     => 'руб.' } )
        end

        if dop_usl.size > 0
          i = 1
          dop_usl.each do |k,v|
            line.gsub!(/dopName#{i}/,    v['dopName'])
            line.gsub!(/dopCount#{i}/,   v['dopCount'].to_s)
            line.gsub!(/dopPrice#{i}/,   v['dopPrice'].to_s)
            line.gsub!(/dopMeasure#{i}/, v['dopMeasure'])
            line.gsub!(/dopRub#{i}/,     v['dopRub'])
            i = i+1
          end
        end

        if dop_usl.size > 0
          dop_count = dop_usl.size
        else
          dop_count = 0
        end

        j = dop_count + 1

        if dop_count < 4
          procherk_count = 4 - dop_count
          procherk_count.times do
            line.gsub!(/dopName#{j}/,    '----------')
            line.gsub!(/dopCount#{j}/,   '----------')
            line.gsub!(/dopPrice#{j}/,   '----------')
            line.gsub!(/dopMeasure#{j}/, '----------')
            line.gsub!(/dopRub#{j}/,     '----------')
            j = j+1
          end
        end

        #Данные автомобиля и водителя
        request.car.state_number           ? line.gsub!(/«carNumber»/, request.car.state_number)              : line.gsub!(/«carNumber»/, '----------')
        request.car.body_state_number      ? line.gsub!(/«trailerNumber»/, request.car.body_state_number)     : line.gsub!(/«trailerNumber»/, '----------')
        request.user.mobile_phone_business ? line.gsub!(/«managerPhone»/, request.user.mobile_phone_business) : line.gsub!(/«managerPhone»/, '----------')
        line.gsub!(/«carBrand»/, request.car.car_model.car_model)
        line.gsub!(/«driverName»/, request.driver.full_name)
        line.gsub!(/«driverPassportData»/, request.driver.passport_data)
        line.gsub!(/driverRegistrationPlace/, request.driver.registration_place)

        #Ответственность сторон
        line.gsub!(/«responsTransReplacement»/, request.carrier_company.respons_transport_replacement_req)
        line.gsub!(/«responsCargoCompensation»/, request.carrier_company.respons_compensation_for_damage)

        line.gsub!(/«carrierNepodResp»/, request.carrier_company.respons_undeliver_transport_loading.to_s)
        line.gsub!(/«lateHours»/,        request.carrier_company.respons_transport_late_loading_hours.to_s)
        line.gsub!(/«carrierOpozdResp»/, request.carrier_company.respons_transport_late_loading_percent.to_s)
        line.gsub!(/«prosrHours»/,       request.carrier_company.respons_transport_late_destination_hours.to_s)
        line.gsub!(/«carrierProsrResp»/, request.carrier_company.respons_transport_late_destination_percent.to_s)
        line.gsub!(/«custDocLate»/,      request.carrier_company.respons_document_late.to_s)
        line.gsub!(/«custOtkResp»/,      request.carrier_company.respons_refuse_loading_day.to_s)
        line.gsub!(/prostoyHour/,        request.carrier_company.respons_idle_excessively_hours.to_s)
        line.gsub!(/custProstResp/,      request.carrier_company.respons_idle_excessively_percent.to_s)
        line.gsub!(/«custProsrPaym»/,    request.carrier_company.respons_payment_late.to_s)

        #Реквизиты и подписи сторон
        line.gsub!(/«legalAddress»/,          request.carrier_company.legal_address)
        line.gsub!(/«actualAddress»/,         request.carrier_company.actual_address)
        line.gsub!(/«ogrn»/,                  request.carrier_company.ogrn)
        line.gsub!(/«inn_kpp»/,               "#{request.carrier_company.inn} / #{request.carrier_company.kpp}")
        line.gsub!(/«okpo»/,                  request.carrier_company.okpo)
        line.gsub!(/«phone»/,                 request.carrier_company.phone)
        line.gsub!(/«fax»/,                   request.carrier_company.fax)
        line.gsub!(/«email»/,                 request.carrier_company.email)
        line.gsub!(/«currentAccount»/,        request.carrier_company.current_account)
        line.gsub!(/«bank»/,                  request.carrier_company.bank)
        line.gsub!(/«correspondentAccount»/,  request.carrier_company.correspondent_account)
        line.gsub!(/«bankBik»/,               request.carrier_company.bik)
        request.carrier_company.bank_inn     ? line.gsub!(/«bankInn»/, request.carrier_company.bank_inn) : line.gsub!(/«bankInn»/, '---')
        line.gsub!(/«/, '' )
        line.gsub!(/»/, '' )
        out_file.print line
      end
    end

    %x[mv #{dir_name}/word/document_new.xml #{dir_name}/word/document.xml]
    %x[cd #{dir_name} && zip -r ../result.docx . && cd ..]
    %x[rm -rf #{dir_name}]

    #Задание имени файла
    if request.request_type == 'request'
      file_name = "Заявка_№#{request.id}-П-#{request.created_at.strftime('%Y_%m_%d')}.docx"
    elsif request.request_type == 'contract_request'
      file_name = "Договор-заявка_№#{request.id}-П-#{request.created_at.strftime('%Y_%m_%d')}.docx"
    end

    send_file "#{documents_path}/result.docx", :type=>'application/msword', :filename => file_name

  end

  def save_as
    @request = Request.find(params[:id])
  end

end
