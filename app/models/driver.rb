# encoding: UTF-8
class Driver < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 20
  belongs_to :carrier_company 

  validates :lastname, :presence => { :message => "Укажите фамилию" }
  validates :firstname, :presence => { :message => "Укажите имя" }
  validates :carrier_company_id, :presence => { :message => "Выберите компанию" }
end
