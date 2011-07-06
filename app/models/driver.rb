# encoding: UTF-8
class Driver < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 20
  belongs_to :carrier_company 
  has_many :car

  validates :lastname, :presence => { :message => "Укажите фамилию" }
  validates :firstname, :presence => { :message => "Укажите имя" }
  validates :carrier_company_id, :presence => { :message => "Выберите компанию" }

  def full_name
    self.lastname + ' ' + self.firstname + ' ' + self.middlename
  end

end
