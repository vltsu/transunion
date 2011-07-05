# encoding: UTF-8
class Opf < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 20
  belongs_to :carrier_companies
  belongs_to :customer_companies
end
