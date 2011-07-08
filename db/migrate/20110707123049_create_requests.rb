class CreateRequests < ActiveRecord::Migration
  def self.up
    create_table :requests do |t|
      t.string :item
      t.integer :cargo_classification_id
      t.decimal :weight, :precision => 5, :scale => 2
      t.decimal :volume, :precision => 5, :scale => 2
      t.integer :temperature
      t.integer :evropallet
      t.integer :bigpallet
      t.integer :belts_count
      t.decimal :height, :precision => 5, :scale => 2
      t.decimal :width,  :precision => 5, :scale => 2
      t.decimal :length, :precision => 5, :scale => 2
      t.boolean :loading_up
      t.boolean :loading_down
      t.boolean :loading_side
      t.integer :crate_body
      t.integer :customer_company_id
      t.integer :carrier_company_id
      t.integer :driver_id
      t.integer :car_id
      t.integer :cars_count
      t.decimal :carrier_rate_summ, :precision => 10, :scale => 2
      t.integer :carrier_rate_podacha_hours
      t.decimal :carrier_rate_hour_price, :precision => 5, :scale => 2
      t.decimal :carrier_dop_prab_price, :precision => 10, :scale => 2
      t.decimal :carrier_dop_prab_count, :precision => 5, :scale => 2
      t.decimal :carrier_dop_prab_summ,  :precision => 10, :scale => 2
      t.decimal :carrier_dop_prostoy_price, :precision => 10, :scale => 2
      t.integer :carrier_dop_prostoy_count
      t.decimal :carrier_dop_prostoy_summ, :precision => 10, :scale => 2
      t.decimal :carrier_dop_dop_tochka_pogr_price, :precision => 10, :scale => 2
      t.integer :carrier_dop_dop_tochka_pogr_count
      t.decimal :carrier_dop_dop_tochka_pogr_summ, :precision => 10, :scale => 2
      t.decimal :carrier_dop_dop_tochka_razgr_price, :precision => 10, :scale => 2
      t.integer :carrier_dop_dop_tochka_razgr_count
      t.decimal :carrier_dop_dop_tochka_razgr_summ, :precision => 10, :scale => 2
      t.decimal :carrier_dop_vozvr_price, :precision => 10, :scale => 2
      t.integer :carrier_dop_vozvr_count
      t.decimal :carrier_dop_vozvr_summ, :precision => 10, :scale => 2
      t.decimal :carrier_dop_pereg_price, :precision => 10, :scale => 2
      t.decimal :carrier_dop_pereg_count, :precision => 5, :scale => 2
      t.decimal :carrier_dop_pereg_summ, :precision => 10, :scale => 2
      t.decimal :carrier_dop_night_stay_price, :precision => 10, :scale => 2
      t.integer :carrier_dop_night_stay_count
      t.decimal :carrier_dop_night_stay_summ, :precision => 10, :scale => 2
      t.decimal :carrier_dop_mezgorod_price, :precision => 10, :scale => 2
      t.integer :carrier_dop_mezgorod_count
      t.decimal :carrier_dop_mezgorod_summ, :precision => 10, :scale => 2
      t.decimal :carrier_dop_rastentovka_price, :precision => 10, :scale => 2
      t.integer :carrier_dop_rastentovka_count
      t.decimal :carrier_dop_rastentovka_summ, :precision => 10, :scale => 2
      t.decimal :carrier_dop_soprov_price, :precision => 10, :scale => 2
      t.integer :carrier_dop_soprov_count
      t.decimal :carrier_dop_soprov_summ, :precision => 10, :scale => 2
      t.decimal :carrier_dop_negabarit_price, :precision => 10, :scale => 2
      t.integer :carrier_dop_negabarit_count
      t.decimal :carrier_dop_negabarit_summ, :precision => 10, :scale => 2
      t.decimal :carrier_dop_gruzch_price, :precision => 10, :scale => 2
      t.integer :carrier_dop_gruzch_count
      t.decimal :carrier_dop_gruzch_summ, :precision => 10, :scale => 2
      t.decimal :carrier_dop_summ, :precision => 10, :scale => 2
      t.integer :carrier_rate_hours
      t.decimal :carrier_rate_sverh_price, :precision => 10, :scale => 2
      t.integer :carrier_rate_sverh_count
      t.decimal :carrier_rate_sverh_summ, :precision => 10, :scale => 2
      t.decimal :carrier_rate_total_summ, :precision => 10, :scale => 2
      t.decimal :carrier_dop_discount, :precision => 10, :scale => 2
      t.decimal :carrier_summ, :precision => 10, :scale => 2
      t.decimal :carrier_total_summ, :precision => 10, :scale => 2
      t.decimal :carrier_summ_to_pay, :precision => 10, :scale => 2
      t.decimal :carrier_prepayment, :precision => 10, :scale => 2
      t.integer :carrier_payment_method_id
      t.integer :carrier_payment_way_id
      t.integer :carrier_maturity
      t.integer :carrier_payment_doc_id
      t.integer :carrier_documents_return_term
      t.decimal :customer_rate_summ, :precision => 10, :scale => 2
      t.integer :customer_rate_podacha_hours
      t.decimal :customer_rate_hour_price, :precision => 10, :scale => 2
      t.decimal :customer_dop_summ, :precision => 10, :scale => 2
      t.integer :customer_rate_hours
      t.decimal :customer_rate_sverh_price, :precision => 10, :scale => 2
      t.integer :customer_rate_sverh_count
      t.decimal :customer_rate_sverh_summ, :precision => 10, :scale => 2
      t.decimal :customer_rate_total_summ, :precision => 10, :scale => 2
      t.decimal :customer_dop_prab_price, :precision => 10, :scale => 2
      t.decimal :customer_dop_prab_count, :precision => 5, :scale => 2
      t.decimal :customer_dop_prab_summ, :precision => 10, :scale => 2
      t.decimal :customer_dop_dop_tochka_pogr_price, :precision => 10, :scale => 2
      t.integer :customer_dop_dop_tochka_pogr_count
      t.decimal :customer_dop_dop_tochka_pogr_summ, :precision => 10, :scale => 2
      t.decimal :customer_dop_dop_tochka_razgr_price, :precision => 10, :scale => 2
      t.integer :customer_dop_dop_tochka_razgr_count
      t.decimal :customer_dop_dop_tochka_razgr_summ, :precision => 10, :scale => 2
      t.decimal :customer_dop_vozvr_price, :precision => 10, :scale => 2
      t.integer :customer_dop_vozvr_count
      t.decimal :customer_dop_vozvr_summ, :precision => 10, :scale => 2
      t.decimal :customer_dop_pereg_price, :precision => 10, :scale => 2
      t.decimal :customer_dop_pereg_count, :precision => 5, :scale => 2
      t.decimal :customer_dop_pereg_summ, :precision => 10, :scale => 2
      t.decimal :customer_dop_night_stay_price, :precision => 10, :scale => 2
      t.integer :customer_dop_night_stay_count
      t.decimal :customer_dop_night_stay_summ, :precision => 10, :scale => 2
      t.decimal :customer_dop_mezgorod_price, :precision => 10, :scale => 2
      t.integer :customer_dop_mezgorod_count
      t.decimal :customer_dop_mezgorod_summ, :precision => 10, :scale => 2
      t.decimal :customer_dop_rastentovka_price, :precision => 10, :scale => 2
      t.integer :customer_dop_rastentovka_count
      t.decimal :customer_dop_rastentovka_summ, :precision => 10, :scale => 2
      t.decimal :customer_dop_soprov_price, :precision => 10, :scale => 2
      t.integer :customer_dop_soprov_count
      t.decimal :customer_dop_soprov_summ, :precision => 10, :scale => 2
      t.decimal :customer_dop_negabarit_price, :precision => 10, :scale => 2
      t.integer :customer_dop_negabarit_count
      t.decimal :customer_dop_negabarit_summ, :precision => 10, :scale => 2
      t.decimal :customer_dop_gruzch_price, :precision => 10, :scale => 2
      t.integer :customer_dop_gruzch_count
      t.decimal :customer_dop_gruzch_summ, :precision => 10, :scale => 2
      t.decimal :customer_total_summ, :precision => 10, :scale => 2
      t.decimal :customer_summ_to_pay, :precision => 10, :scale => 2
      t.string :customer_invoice_number
      t.decimal :customer_payed_summ, :precision => 10, :scale => 2
      t.decimal :customer_prepayment, :precision => 10, :scale => 2
      t.integer :customer_payment_method_id
      t.integer :customer_payment_way_id
      t.integer :customer_maturity
      t.integer :customer_payment_doc_id
      t.integer :customer_documents_return_term
      t.integer :user_id
      t.string :manager_fot
      t.decimal :manager_percent, :precision => 5, :scale => 2
      t.decimal :manager_premium, :precision => 10, :scale => 2
      t.decimal :manager_total_summ, :precision => 10, :scale => 2
      t.integer :account_expenditure
      t.string :account_money
      t.timestamp :account_parish_date
      t.decimal :account_parish_summ, :precision => 10, :scale => 2
      t.timestamp :account_consumption_date
      t.integer :account_consumption_respect
      t.decimal :account_consumption_summ, :precision => 10, :scale => 2
      t.string :responsibility_transport_replacement_requirement
      t.string :compensation_for_damage
      t.string :undeliver_transport_loading_city
      t.string :undeliver_transport_loading_intercity
      t.string :transport_late_loading_city
      t.string :transport_late_loading_intercity
      t.string :transport_late_destination_city
      t.string :transport_late_destination_intercity
      t.string :transport_refuse_loading_day_city
      t.string :transport_refuse_loading_day_intercity
      t.string :transport_idle_excessively_city
      t.string :transport_idle_excessively_intercity
      t.string :payment_late
      t.string :document_late
      t.decimal :customer_responsibility_car_deny_price, :precision => 10, :scale => 2
      t.decimal :customer_responsibility_car_deny_summ, :precision => 10, :scale => 2
      t.string :customer_responsibility_prostoy_count
      t.decimal :customer_responsibility_prostoy_price, :precision => 10, :scale => 2
      t.decimal :customer_responsibility_prostoy_summ, :precision => 10, :scale => 2
      t.string :customer_responsibility_payment_late_count
      t.decimal :customer_responsibility_payment_late_price, :precision => 10, :scale => 2
      t.decimal :customer_responsibility_payment_late_summ, :precision => 10, :scale => 2
      t.string :customer_responsibility_document_late_count
      t.string :customer_responsibility_document_late_price
      t.string :customer_responsibility_document_late_summ
      t.string :carrier_responsibility_car_deny_price
      t.string :carrier_responsibility_car_deny_summ
      t.string :carrier_responsibility_late_count
      t.string :carrier_responsibility_late_price
      t.string :carrier_responsibility_late_summ
      t.string :carrier_responsibility_delivery_late_count
      t.string :carrier_responsibility_delivery_late_price
      t.string :carrier_responsibility_delivery_late_summ
      t.string :carrier_responsibility_document_late_count
      t.string :carrier_responsibility_document_late_price
      t.string :carrier_responsibility_document_late_summ
      t.string :carrier_responsibility_summ
      t.string :customer_responsibility_summ
      t.string :transport_idle_excessively_hours
      t.string :transport_late_loading_hours
      t.string :transport_late_destination_hours
      t.string :request_type
      t.string :other_conditions
      t.decimal :carrier_rate_total_summ, :precision => 10, :scale => 2
      t.decimal :customer_rate_total_summ, :precision => 10, :scale => 2
      t.integer :bill_id
      t.integer :carrier_bill_id
      t.boolean :is_finished
      t.string :customer_payment_way_for_salary
      t.string :carrier_payment_way_for_salary

      t.timestamps
    end
  end

  def self.down
    drop_table :requests
  end
end
