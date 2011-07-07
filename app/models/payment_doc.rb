# encoding: UTF-8
class PaymentDoc < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 20
end
