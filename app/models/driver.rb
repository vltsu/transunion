# encoding: UTF-8
class Driver < ActiveRecord::Base
  belongs_to :carrier_company 

  validates :firstname, :presence => { :message => "Имя не может быть пустым" }
  validates :lastname, :presence => true
  validates :carrier_company_id, :presence => true
end
