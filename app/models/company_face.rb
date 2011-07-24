# encoding: UTF-8
class CompanyFace < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 20

  has_many :carrier_company
  has_many :customer_company

  validates :company_face,           :presence => { :message => "Укажите компанию в лице" }
  validates :company_face_podp,      :presence => { :message => "Укажите компанию в лице для подписи" }
end
