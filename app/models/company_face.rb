# encoding: UTF-8
class CompanyFace < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 20

  belongs_to :carrier_company
end
