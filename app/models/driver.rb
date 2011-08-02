# encoding: UTF-8
class Driver < ActiveRecord::Base
  cattr_reader :per_page

  cattr_reader :passport_data
  cattr_reader :registration_place

  @@per_page = 20
  belongs_to :carrier_company
  has_many :cars
  has_many :requests

  accepts_nested_attributes_for :cars

  validates_presence_of :carrier_company
  validates :lastname, :presence => { :message => "Укажите фамилию" }
  validates :firstname, :presence => { :message => "Укажите имя" }
  validates :carrier_company_id, :presence => { :message => "Выберите компанию" }

  def full_name
    self.lastname + ' ' + self.firstname + ' ' + self.middlename
  end

  def passport_data
    "Серия: #{self.passport_series} номер: #{self.passport_number} выдан: #{self.passport_issue_whom} #{self.passport_issue_date}"
  end

  def registration_place
    "Серия: #{self.region}, #{self.city}, #{self.street} д. #{self.house} кв. #{self.apartment}"
  end

end
