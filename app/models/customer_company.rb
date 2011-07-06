# encoding: UTF-8
class CustomerCompany < ActiveRecord::Base

  cattr_accessor :params

  before_validation :standartise_fields

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

  validates_numericality_of :respons_refuse_loading_day
  validates_numericality_of :respons_idle_excessively_hours
  validates_numericality_of :respons_idle_excessively_percent
  validates_numericality_of :respons_payment_late
          
  validates_numericality_of :respons_undeliver_transport_loading
  validates_numericality_of :respons_transport_late_loading_hours
  validates_numericality_of :respons_transport_late_loading_percent
  validates_numericality_of :respons_transport_late_destination_hours
  validates_numericality_of :response_transport_late_destination_percent
  validates_numericality_of :respons_document_late
                    
  def standartise_fields
    #Проверка на случай если данные идут не из формы, а из fixtures
    if params
      self.respons_refuse_loading_day                  = params[:respons_refuse_loading_day].to_s.gsub(/,/,'.')
      self.respons_idle_excessively_hours              = params[:respons_idle_excessively_hours].to_s.gsub(/,/,'.')
      self.respons_idle_excessively_percent            = params[:respons_idle_excessively_percent].to_s.gsub(/,/,'.')
      self.respons_payment_late                        = params[:respons_payment_late].to_s.gsub(/,/,'.')
      self.respons_undeliver_transport_loading         = params[:respons_undeliver_transport_loading].to_s.gsub(/,/,'.')
      self.respons_transport_late_loading_hours        = params[:respons_transport_late_loading_hours].to_s.gsub(/,/,'.')
      self.respons_transport_late_loading_percent      = params[:respons_transport_late_loading_percent].to_s.gsub(/,/,'.')
      self.respons_transport_late_destination_hours    = params[:respons_transport_late_destination_hours].to_s.gsub(/,/,'.')
      self.response_transport_late_destination_percent = params[:response_transport_late_destination_percent].to_s.gsub(/,/,'.')
      self.respons_document_late                       = params[:respons_document_late].to_s.gsub(/,/,'.')
    end
  end

end
