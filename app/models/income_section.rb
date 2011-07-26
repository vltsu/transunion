# encoding: UTF-8
class IncomeSection < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 20
end
