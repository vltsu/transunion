# encoding: UTF-8
class CarTonnage < ActiveRecord::Base
  #Переменная для хранения params из контроллера
  cattr_accessor :params

  before_validation :standartise_fields

  cattr_reader :per_page
  @@per_page = 20

  has_many :car

  validates_numericality_of :car_tonnage

  protected
  # Решение проблемы с '.' и ','
  def standartise_fields
    #Проверка на случай если данные идут не из формы, а из fixtures
    if params
      self.car_tonnage = params[:car_tonnage].to_s.gsub(/,/,'.')
    end
  end

end
