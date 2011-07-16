# encoding: UTF-8
class UnloadingPoint < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 20
  belongs_to :request

  validates  :contact_person,  :presence => { :message => 'Точка разгрузки - введите контактное лицо' }
  validates  :date,            :presence => { :message => 'Точка разгрузки - введите дату разгрузки' }
  validates  :address,         :presence => { :message => 'Точка разгрузки - введите адрес' }
  validates  :consignee,       :presence => { :message => 'Точка разгрузки - введите грузополучателя' }
  validates  :phone,           :presence => { :message => 'Точка разгрузки - введите телефон для связи(моб) ' }

end
