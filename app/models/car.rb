# encoding: UTF-8
class Car < ActiveRecord::Base
  # Параметр содержащий приходящие данные из формы
  cattr_accessor :params

  cattr_reader :car_gabarits
  cattr_reader :full_name

  before_validation :standartise_fields

  cattr_reader :per_page
  @@per_page = 20

  belongs_to :car_tonnage
  belongs_to :car_model
  belongs_to :car_type
  belongs_to :driver

  validates_presence_of :driver
  validates :car_model_id,   :presence => { :message => 'Выберите марку автомобиля' }
  validates :car_tonnage_id, :presence => { :message => 'Выберите тоннаж автомобиля' }
  validates :car_type_id,    :presence => { :message => 'Выберите тип кузова' }
  validates :driver_id,      :presence => { :message => 'Выберите водителя' }

  validates_numericality_of :dimensions_width, :allow_nil => true
  validates_numericality_of :dimensions_length, :allow_nil => true
  validates_numericality_of :dimensions_height, :allow_nil => true

  def full_name
    "#{self.car_model.car_model} #{self.car_type.car_type} #{self.car_tonnage.car_tonnage}"
  end

  def car_gabarits
    "#{self.dimensions_length}x#{self.dimensions_width}x#{self.dimensions_height}"
  end

 protected

  def standartise_fields
    #Проверка на случай если данные идут не из формы, а из fixtures
    if params
      self.dimensions_width  = params[:dimensions_width].to_s.gsub(/,/,'.')
      self.dimensions_length = params[:dimensions_length].to_s.gsub(/,/,'.')
      self.dimensions_height = params[:dimensions_height].to_s.gsub(/,/,'.')
    end
  end

end
