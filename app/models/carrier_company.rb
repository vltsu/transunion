# encoding: UTF-8
class CarrierCompany < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 20
  has_many :driver
  has_one  :opf
  has_one  :company_face

  validates :title,          :presence => { :message => "Укажите название компании" }
  validates :company_type,   :presence => { :message => "Укажите тип компании" }
  validates :operates_basis, :presence => { :message => "Заполните поле 'Действует на основании'" }
  validates :company_face,   :presence => { :message => "Заполните поле 'Компания в лице'" }
  validates :manager_name,   :presence => { :message => "Укажите ФИО управляющего" }
  validates :legal_address,  :presence => { :message => "Укажите юридический адрес" }
  validates :actual_address, :presence => { :message => "Укажите фактический адрес" }
  validates :phone,          :presence => { :message => "Укажите телефон" }

end
