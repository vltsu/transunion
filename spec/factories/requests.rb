# encoding: UTF-8
Factory.define :request do |f|
  f.request_type 'request'
  f.association :cargo_classification, :factory => :cargo_classification
  f.item 'Сталь'
  f.volume '120'
  f.weight '10'
  f.temperature 'от 0 до 60'
  f.length '4'
  f.width '5'
  f.height '6'
  f.bigpallet '7'
  f.belts_count '11'
  f.crate_body '2'
  f.other_conditions 'привезти в целости'
  f.loading_down 1
  f.association :customer_company, :factory => :customer_company
  f.association :carrier_company,  :factory => :carrier_company
  f.association :driver,           :factory => :driver
  f.association :car,              :factory => :car
  f.loading_points do |lp|
    [lp.association(:loading_point), lp.association(:loading_point), lp.association(:loading_point)]
  end
  f.unloading_points do |up|
    [up.association(:unloading_point), up.association(:unloading_point)]
  end
  f.customer_rate_hours '4'
  f.customer_rate_podacha_hours '1'
  f.customer_rate_hour_price '600.66'
  f.customer_rate_sverh_price '777.77'
  f.carrier_rate_summ '16000'
  f.carrier_rate_sverh_price '123.12'
  f.customer_dop_prab_price '11'
  f.customer_dop_dop_tochka_pogr_price '22'
  f.customer_dop_dop_tochka_razgr_price '33'
  f.customer_dop_rastentovka_price '44'
  f.customer_dop_pereg_price '55'
  f.customer_dop_night_stay_price '66'
  f.customer_dop_mezgorod_price '77'
  f.customer_dop_soprov_price '88'
  f.customer_dop_vozvr_price '99'
  f.customer_dop_negabarit_price '100'
  f.customer_dop_gruzch_price '111'
  f.carrier_dop_prab_price '222'
  f.carrier_dop_dop_tochka_pogr_price '333'
  f.carrier_dop_dop_tochka_razgr_price '444'
  f.carrier_dop_rastentovka_price '555'
  f.carrier_dop_pereg_price '666'
  f.carrier_dop_night_stay_price '777'
  f.carrier_dop_mezgorod_price '888'
  f.carrier_dop_soprov_price '999'
  f.carrier_dop_vozvr_price '1000'
  f.carrier_dop_negabarit_price '1111'
  f.carrier_dop_gruzch_price '2222'
  f.customer_payment_method_id 2
  f.customer_payment_way_id 2
  f.customer_maturity '3'
  f.customer_prepayment '3000'
  f.customer_payment_doc_id '3'
  f.bill_id '3'
  f.carrier_payment_method_id 4
  f.carrier_payment_way_id 4
  f.carrier_maturity '7'
  f.carrier_payment_doc_id 4
  f.carrier_documents_return_term '5'
  f.carrier_bill_id '10'
end
