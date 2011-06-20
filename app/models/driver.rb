class Driver < ActiveRecord::Base
  belongs_to :carrier_company 

  validates_presence_of :firstname
  validates_presence_of :lastname
  validates_presence_of :carrier_company_id
end
