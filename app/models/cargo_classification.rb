# encoding: UTF-8
class CargoClassification < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 20
end
