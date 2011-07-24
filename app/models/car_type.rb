# encoding: UTF-8
class CarType < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 20
  has_many :cars
end
