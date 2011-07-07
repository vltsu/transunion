# encoding: UTF-8
class PaymentMethod < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 20
end
