# encoding: UTF-8
class Opf < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 20
  has_many :carrier_companies
  has_many :customer_companies
end
