# encoding: UTF-8
class Request < ActiveRecord::Base

  cattr_accessor :params
  cattr_reader   :cargo_gabarits

  before_validation :standartise_fields

  cattr_reader :per_page
  @@per_page = 20

  belongs_to :user
  belongs_to :carrier_company
  belongs_to :customer_company
  belongs_to :driver
  belongs_to :car
  belongs_to :customer_payment_doc,    :class_name => "PaymentDoc",    :foreign_key => "customer_payment_doc_id"
  belongs_to :carrier_payment_doc,     :class_name => "PaymentDoc",    :foreign_key => "carrier_payment_doc_id"
  belongs_to :customer_payment_method, :class_name => "PaymentMethod", :foreign_key => "customer_payment_method_id"
  belongs_to :carrier_payment_method,  :class_name => "PaymentMethod", :foreign_key => "carrier_payment_method_id"
  belongs_to :customer_payment_way,    :class_name => "PaymentWay",    :foreign_key => "customer_payment_way_id"
  belongs_to :carrier_payment_way,     :class_name => "PaymentWay",    :foreign_key => "carrier_payment_way_id"
  belongs_to :cargo_classification

  has_many :loading_points
  has_many :unloading_points

  accepts_nested_attributes_for :loading_points,   :reject_if => lambda { |a| a[:address].blank? }
  accepts_nested_attributes_for :unloading_points, :reject_if => lambda { |a| a[:address].blank? }

  validates :request_type,               :presence => { :message => 'Выберите тип документа' }
  validates :cargo_classification_id,    :presence => { :message => 'Выберите класс груза' }
  validates :item,                       :presence => { :message => 'Введите название груза' }
  validates :customer_company_id,        :presence => { :message => 'Выберите компанию заказчика' }
  validates :carrier_company_id,         :presence => { :message => 'Выберите компанию перевозчика' }
  validates :driver_id,                  :presence => { :message => 'Выберите водителя' }
  validates :car_id,                     :presence => { :message => 'Выберите автомобиль' }
  validates :customer_payment_method_id, :presence => { :message => 'Выберите вид расчёта с заказчиком' }
  validates :customer_payment_way_id,    :presence => { :message => 'Выберите способ оплаты заказчику' }
  validates :customer_payment_doc_id,    :presence => { :message => 'Выберите тип документов для заказчика' }
  validates :carrier_payment_method_id,  :presence => { :message => 'Выберите вид расчёта с перевозчиком' }
  validates :carrier_payment_way_id,     :presence => { :message => 'Выберите спocоб оплаты перевозчику' }
  validates :carrier_payment_doc_id,     :presence => { :message => 'Выберите тип документов для перевозчика' }

  def cargo_gabarits
    "#{self.length}x#{self.width}x#{self.height}"
  end

  protected

  def standartise_fields
    #Проверка на случай если данные идут не из формы, а из тестов
    if params
      self.volume                               = params[:volume].to_s.gsub(/,/,'.')
      self.weight                               = params[:weight].to_s.gsub(/,/,'.')
      self.length                               = params[:length].to_s.gsub(/,/,'.')
      self.width                                = params[:width].to_s.gsub(/,/,'.')
      self.height                               = params[:height].to_s.gsub(/,/,'.')
      self.crate_body                           = params[:crate_body].to_s.gsub(/,/,'.')
      self.customer_rate_summ                   = params[:customer_rate_summ].to_s.gsub(/,/,'.')
      self.customer_rate_sverh_price            = params[:customer_rate_sverh_price].to_s.gsub(/,/,'.')
      self.customer_rate_total_summ             = params[:customer_rate_total_summ].to_s.gsub(/,/,'.')
      self.customer_rate_podacha_hours          = params[:customer_rate_podacha_hours].to_s.gsub(/,/,'.')
      self.customer_rate_hour_price             = params[:customer_rate_hour_price].to_s.gsub(/,/,'.')
      self.carrier_rate_summ                    = params[:carrier_rate_summ].to_s.gsub(/,/,'.')
      self.carrier_rate_sverh_price             = params[:carrier_rate_sverh_price].to_s.gsub(/,/,'.')
      self.carrier_rate_total_summ              = params[:carrier_rate_total_summ].to_s.gsub(/,/,'.')
      self.carrier_rate_podacha_hours           = params[:carrier_rate_podacha_hours].to_s.gsub(/,/,'.')
      self.carrier_rate_hour_price              = params[:carrier_rate_hour_price].to_s.gsub(/,/,'.')
      self.customer_dop_prab_count              = params[:customer_dop_prab_count].to_s.gsub(/,/,'.')
      self.customer_dop_prab_price              = params[:customer_dop_prab_price].to_s.gsub(/,/,'.')
      self.customer_dop_prab_summ               = params[:customer_dop_prab_summ].to_s.gsub(/,/,'.')
      self.customer_dop_dop_tochka_pogr_count   = params[:customer_dop_dop_tochka_pogr_count].to_s.gsub(/,/,'.')
      self.customer_dop_dop_tochka_pogr_price   = params[:customer_dop_dop_tochka_pogr_price].to_s.gsub(/,/,'.')
      self.customer_dop_dop_tochka_pogr_summ    = params[:customer_dop_dop_tochka_pogr_summ].to_s.gsub(/,/,'.')
      self.customer_dop_dop_tochka_razgr_count  = params[:customer_dop_dop_tochka_razgr_count].to_s.gsub(/,/,'.')
      self.customer_dop_dop_tochka_razgr_price  = params[:customer_dop_dop_tochka_razgr_price].to_s.gsub(/,/,'.')
      self.customer_dop_dop_tochka_razgr_summ   = params[:customer_dop_dop_tochka_razgr_summ].to_s.gsub(/,/,'.')
      self.customer_dop_rastentovka_count       = params[:customer_dop_rastentovka_count].to_s.gsub(/,/,'.')
      self.customer_dop_rastentovka_price       = params[:customer_dop_rastentovka_price].to_s.gsub(/,/,'.')
      self.customer_dop_rastentovka_summ        = params[:customer_dop_rastentovka_summ].to_s.gsub(/,/,'.')
      self.customer_dop_pereg_count             = params[:customer_dop_pereg_count].to_s.gsub(/,/,'.')
      self.customer_dop_pereg_price             = params[:customer_dop_pereg_price].to_s.gsub(/,/,'.')
      self.customer_dop_pereg_summ              = params[:customer_dop_pereg_summ].to_s.gsub(/,/,'.')
      self.customer_dop_night_stay_count        = params[:customer_dop_night_stay_count].to_s.gsub(/,/,'.')
      self.customer_dop_night_stay_price        = params[:customer_dop_night_stay_price].to_s.gsub(/,/,'.')
      self.customer_dop_night_stay_summ         = params[:customer_dop_night_stay_summ].to_s.gsub(/,/,'.')
      self.customer_dop_mezgorod_count          = params[:customer_dop_mezgorod_count].to_s.gsub(/,/,'.')
      self.customer_dop_mezgorod_price          = params[:customer_dop_mezgorod_price].to_s.gsub(/,/,'.')
      self.customer_dop_mezgorod_summ           = params[:customer_dop_mezgorod_summ].to_s.gsub(/,/,'.')
      self.customer_dop_soprov_count            = params[:customer_dop_soprov_count].to_s.gsub(/,/,'.')
      self.customer_dop_soprov_price            = params[:customer_dop_soprov_price].to_s.gsub(/,/,'.')
      self.customer_dop_soprov_summ             = params[:customer_dop_soprov_summ].to_s.gsub(/,/,'.')
      self.customer_dop_vozvr_count             = params[:customer_dop_vozvr_count].to_s.gsub(/,/,'.')
      self.customer_dop_vozvr_price             = params[:customer_dop_vozvr_price].to_s.gsub(/,/,'.')
      self.customer_dop_vozvr_summ              = params[:customer_dop_vozvr_summ].to_s.gsub(/,/,'.')
      self.customer_dop_negabarit_count         = params[:customer_dop_negabarit_count].to_s.gsub(/,/,'.')
      self.customer_dop_negabarit_price         = params[:customer_dop_negabarit_price].to_s.gsub(/,/,'.')
      self.customer_dop_negabarit_summ          = params[:customer_dop_negabarit_summ].to_s.gsub(/,/,'.')
      self.customer_dop_gruzch_count            = params[:customer_dop_gruzch_count].to_s.gsub(/,/,'.')
      self.customer_dop_gruzch_price            = params[:customer_dop_gruzch_price].to_s.gsub(/,/,'.')
      self.customer_dop_gruzch_summ             = params[:customer_dop_gruzch_summ].to_s.gsub(/,/,'.')
      self.carrier_dop_prab_count              = params[:carrier_dop_prab_count].to_s.gsub(/,/,'.')
      self.carrier_dop_prab_price              = params[:carrier_dop_prab_price].to_s.gsub(/,/,'.')
      self.carrier_dop_prab_summ               = params[:carrier_dop_prab_summ].to_s.gsub(/,/,'.')
      self.carrier_dop_dop_tochka_pogr_count   = params[:carrier_dop_dop_tochka_pogr_count].to_s.gsub(/,/,'.')
      self.carrier_dop_dop_tochka_pogr_price   = params[:carrier_dop_dop_tochka_pogr_price].to_s.gsub(/,/,'.')
      self.carrier_dop_dop_tochka_pogr_summ    = params[:carrier_dop_dop_tochka_pogr_summ].to_s.gsub(/,/,'.')
      self.carrier_dop_dop_tochka_razgr_count  = params[:carrier_dop_dop_tochka_razgr_count].to_s.gsub(/,/,'.')
      self.carrier_dop_dop_tochka_razgr_price  = params[:carrier_dop_dop_tochka_razgr_price].to_s.gsub(/,/,'.')
      self.carrier_dop_dop_tochka_razgr_summ   = params[:carrier_dop_dop_tochka_razgr_summ].to_s.gsub(/,/,'.')
      self.carrier_dop_rastentovka_count       = params[:carrier_dop_rastentovka_count].to_s.gsub(/,/,'.')
      self.carrier_dop_rastentovka_price       = params[:carrier_dop_rastentovka_price].to_s.gsub(/,/,'.')
      self.carrier_dop_rastentovka_summ        = params[:carrier_dop_rastentovka_summ].to_s.gsub(/,/,'.')
      self.carrier_dop_pereg_count             = params[:carrier_dop_pereg_count].to_s.gsub(/,/,'.')
      self.carrier_dop_pereg_price             = params[:carrier_dop_pereg_price].to_s.gsub(/,/,'.')
      self.carrier_dop_pereg_summ              = params[:carrier_dop_pereg_summ].to_s.gsub(/,/,'.')
      self.carrier_dop_night_stay_count        = params[:carrier_dop_night_stay_count].to_s.gsub(/,/,'.')
      self.carrier_dop_night_stay_price        = params[:carrier_dop_night_stay_price].to_s.gsub(/,/,'.')
      self.carrier_dop_night_stay_summ         = params[:carrier_dop_night_stay_summ].to_s.gsub(/,/,'.')
      self.carrier_dop_mezgorod_count          = params[:carrier_dop_mezgorod_count].to_s.gsub(/,/,'.')
      self.carrier_dop_mezgorod_price          = params[:carrier_dop_mezgorod_price].to_s.gsub(/,/,'.')
      self.carrier_dop_mezgorod_summ           = params[:carrier_dop_mezgorod_summ].to_s.gsub(/,/,'.')
      self.carrier_dop_soprov_count            = params[:carrier_dop_soprov_count].to_s.gsub(/,/,'.')
      self.carrier_dop_soprov_price            = params[:carrier_dop_soprov_price].to_s.gsub(/,/,'.')
      self.carrier_dop_soprov_summ             = params[:carrier_dop_soprov_summ].to_s.gsub(/,/,'.')
      self.carrier_dop_vozvr_count             = params[:carrier_dop_vozvr_count].to_s.gsub(/,/,'.')
      self.carrier_dop_vozvr_price             = params[:carrier_dop_vozvr_price].to_s.gsub(/,/,'.')
      self.carrier_dop_vozvr_summ              = params[:carrier_dop_vozvr_summ].to_s.gsub(/,/,'.')
      self.carrier_dop_negabarit_count         = params[:carrier_dop_negabarit_count].to_s.gsub(/,/,'.')
      self.carrier_dop_negabarit_price         = params[:carrier_dop_negabarit_price].to_s.gsub(/,/,'.')
      self.carrier_dop_negabarit_summ          = params[:carrier_dop_negabarit_summ].to_s.gsub(/,/,'.')
      self.carrier_dop_gruzch_count            = params[:carrier_dop_gruzch_count].to_s.gsub(/,/,'.')
      self.carrier_dop_gruzch_price            = params[:carrier_dop_gruzch_price].to_s.gsub(/,/,'.')
      self.carrier_dop_gruzch_summ             = params[:carrier_dop_gruzch_summ].to_s.gsub(/,/,'.')
    end
  end

end
