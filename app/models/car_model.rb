# encoding: UTF-8
class CarModel < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 20

  has_many :car
end