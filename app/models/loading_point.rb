# encoding: UTF-8
class LoadingPoint < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 20
  belongs_to :request

  validates  :contact_person, :presence => { :message => 'Точка погрузки - введите контактное лицо' }
  validates  :date,           :presence => { :message => 'Точка погрузки - введите дату погрузки' }
  validates  :address,        :presence => { :message => 'Точка погрузки - введите адрес' }
  validates  :shipper,        :presence => { :message => 'Точка погрузки - введите грузоотправителя' }
  validates  :phone,          :presence => { :message => 'Точка погрузки - введите телефон для связи(моб) ' }

end
