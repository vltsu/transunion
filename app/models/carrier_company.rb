# encoding: UTF-8
class CarrierCompany < ActiveRecord::Base

  cattr_reader :per_page
  @@per_page = 20
  has_many :driver
  has_one  :opf
  has_one  :company_face

  validates :title,           :presence => { :message => "Укажите название компании" }
  validates :opf_id,          :presence => { :message => "Укажите ОПФ компании" }
  validates :operates_basis,  :presence => { :message => "Заполните поле 'Действует на основании'" }
  validates :company_face_id, :presence => { :message => "Заполните поле 'Компания в лице'" }
  validates :manager_name,    :presence => { :message => "Укажите ФИО управляющего" }
  validates :legal_address,   :presence => { :message => "Укажите юридический адрес" }
  validates :actual_address,  :presence => { :message => "Укажите фактический адрес" }
  validates :phone,           :presence => { :message => "Укажите телефон" }
  
  validates :respons_refuse_loading_day,       :format => { :with => /^\d{1,2}([.,]\d{1,2})?$/, :message => "Введите число в формате 11.11 в поле 'Штраф за отказ от ТС в день погрузки'" }
  validates :respons_idle_excessively_hours,   :format => { :with => /^\d{1,4}([.,]\d{1,2})?$/, :message => "Введите число в формате 1111.11 в поле 'Штраф за простой ТС более n часов'" }
  validates :respons_idle_excessively_percent, :format => { :with => /^\d{1,2}([.,]\d{1,2})?$/, :message => "Введите число в формате 11.11 в поле 'Штраф за простой ТС %'" }
  validates :respons_payment_late,             :format => { :with => /^\d{1,2}([.,]\d{1,2})?$/, :message => "Введите число в формате 11.11 в поле 'Штраф за просрочку оплаты счетов'" }
  
  validates :respons_undeliver_transport_loading,        :format => { :with => /^\d{1,2}([.,]\d{1,2})?$/, :message => "Введите число в формате 11.11 в поле 'Штраф за неподачу ТС под подгрузку'" }
  validates :respons_transport_late_loading_hours,       :format => { :with => /^\d{1,4}([.,]\d{1,2})?$/, :message => "Введите число в формате 1111.11 в поле 'Штраф за опоздание ТС под погрузку часов '" }
  validates :respons_transport_late_loading_percent,     :format => { :with => /^\d{1,2}([.,]\d{1,2})?$/, :message => "Введите число в формате 11.11 в поле 'Штраф за опоздание ТС под подгрузку %'" }
  validates :respons_transport_late_destination_hours,   :format => { :with => /^\d{1,4}([.,]\d{1,2})?$/, :message => "Введите число в формате 1111.11 в поле 'Штраф за просрочку доставки груза часов'" }
  validates :response_transport_late_destination_percent, :format => { :with => /^\d{1,2}([.,]\d{1,2})?$/, :message => "Введите число в формате 11.11 в поле 'Штраф за просрочку доставки груза %'" }
  validates :respons_document_late,                      :format => { :with => /^\d{1,2}([.,]\d{1,2})?$/, :message => "Введите число в формате 11.11 в поле 'Штраф за несвоевременное возвращение документов'" }

end
