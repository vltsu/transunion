# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110726094105) do

  create_table "car_models", :force => true do |t|
    t.string   "car_model"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "car_tonnages", :force => true do |t|
    t.decimal  "car_tonnage", :precision => 5, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "car_types", :force => true do |t|
    t.string   "car_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cargo_classifications", :force => true do |t|
    t.string   "classification"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carrier_companies", :force => true do |t|
    t.string   "title"
    t.string   "legal_address"
    t.string   "actual_address"
    t.integer  "opf_id"
    t.integer  "company_face_id"
    t.string   "ogrn"
    t.string   "okpo"
    t.string   "inn"
    t.string   "kpp"
    t.string   "phone"
    t.string   "fax"
    t.string   "email"
    t.string   "current_account"
    t.string   "bank"
    t.string   "correspondent_account"
    t.string   "bik"
    t.string   "operates_basis"
    t.string   "company_face"
    t.string   "manager_name"
    t.decimal  "respons_refuse_loading_day",                 :precision => 5, :scale => 2
    t.decimal  "respons_idle_excessively_hours",             :precision => 5, :scale => 2
    t.decimal  "respons_idle_excessively_percent",           :precision => 5, :scale => 2
    t.decimal  "respons_payment_late",                       :precision => 5, :scale => 2
    t.string   "respons_transport_replacement_req"
    t.string   "respons_compensation_for_damage"
    t.decimal  "respons_undeliver_transport_loading",        :precision => 5, :scale => 2
    t.decimal  "respons_transport_late_loading_hours",       :precision => 5, :scale => 2
    t.decimal  "respons_transport_late_loading_percent",     :precision => 5, :scale => 2
    t.decimal  "respons_transport_late_destination_hours",   :precision => 5, :scale => 2
    t.decimal  "respons_transport_late_destination_percent", :precision => 5, :scale => 2
    t.decimal  "respons_document_late",                      :precision => 5, :scale => 2
    t.boolean  "black_label"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "bank_inn"
  end

  create_table "cars", :force => true do |t|
    t.integer  "car_model_id"
    t.integer  "car_type_id"
    t.integer  "car_tonnage_id"
    t.string   "type"
    t.string   "year"
    t.string   "state_number"
    t.string   "body_state_number"
    t.string   "body_volume"
    t.string   "body_pallet"
    t.string   "body_v_b_z"
    t.decimal  "dimensions_width",    :precision => 5, :scale => 2
    t.decimal  "dimensions_length",   :precision => 5, :scale => 2
    t.decimal  "dimensions_height",   :precision => 5, :scale => 2
    t.string   "about"
    t.boolean  "operation_city"
    t.boolean  "operation_region"
    t.boolean  "operation_intercity"
    t.integer  "driver_id"
    t.boolean  "san_passport"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "company_faces", :force => true do |t|
    t.string   "company_face"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "company_face_podp"
  end

  create_table "customer_companies", :force => true do |t|
    t.string   "title"
    t.string   "legal_address"
    t.string   "actual_address"
    t.integer  "opf_id"
    t.integer  "company_face_id"
    t.string   "ogrn"
    t.string   "okpo"
    t.string   "inn"
    t.string   "kpp"
    t.string   "phone"
    t.string   "fax"
    t.string   "email"
    t.string   "current_account"
    t.string   "bank"
    t.string   "correspondent_account"
    t.string   "bik"
    t.string   "operates_basis"
    t.string   "manager_name"
    t.decimal  "respons_refuse_loading_day",                 :precision => 5, :scale => 2
    t.decimal  "respons_idle_excessively_hours",             :precision => 5, :scale => 2
    t.decimal  "respons_idle_excessively_percent",           :precision => 5, :scale => 2
    t.decimal  "respons_payment_late",                       :precision => 5, :scale => 2
    t.string   "respons_transport_replacement_req"
    t.string   "respons_compensation_for_damage"
    t.decimal  "respons_undeliver_transport_loading",        :precision => 5, :scale => 2
    t.decimal  "respons_transport_late_loading_hours",       :precision => 5, :scale => 2
    t.decimal  "respons_transport_late_loading_percent",     :precision => 5, :scale => 2
    t.decimal  "respons_transport_late_destination_hours",   :precision => 5, :scale => 2
    t.decimal  "respons_transport_late_destination_percent", :precision => 5, :scale => 2
    t.decimal  "respons_document_late",                      :precision => 5, :scale => 2
    t.boolean  "black_label"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "bank_inn"
  end

  create_table "drivers", :force => true do |t|
    t.string   "lastname"
    t.string   "firstname"
    t.string   "middlename"
    t.string   "region"
    t.string   "city"
    t.string   "district"
    t.string   "street"
    t.string   "type"
    t.string   "house"
    t.string   "housing"
    t.string   "apartment"
    t.string   "mobile_phone"
    t.string   "email"
    t.string   "home_phone"
    t.string   "passport_series"
    t.string   "passport_number"
    t.date     "passport_issue_date"
    t.string   "passport_issue_whom"
    t.integer  "carrier_company_id"
    t.string   "citizenship"
    t.date     "date_of_birth"
    t.string   "about"
    t.boolean  "med_book"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "finances", :force => true do |t|
    t.string   "glob_type"
    t.string   "local_type"
    t.datetime "date"
    t.decimal  "summ",               :precision => 10, :scale => 2
    t.text     "description"
    t.integer  "request_id"
    t.integer  "bill_id"
    t.integer  "income_section_id"
    t.integer  "outcome_section_id"
    t.integer  "payment_method_id"
    t.integer  "salary_person_id"
    t.string   "carrier_beznal_way"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "income_sections", :force => true do |t|
    t.string   "income_section"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loading_points", :force => true do |t|
    t.datetime "date"
    t.string   "time"
    t.integer  "request_id"
    t.string   "contact_person"
    t.string   "phone"
    t.integer  "point_number"
    t.string   "address"
    t.string   "phone_work"
    t.string   "shipper"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "opfs", :force => true do |t|
    t.string   "opf"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "outcome_sections", :force => true do |t|
    t.string   "outcome_section"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payment_docs", :force => true do |t|
    t.string   "payment_doc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payment_methods", :force => true do |t|
    t.string   "payment_method"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payment_ways", :force => true do |t|
    t.string   "payment_way"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requests", :force => true do |t|
    t.string   "item"
    t.integer  "cargo_classification_id"
    t.decimal  "weight",                                                         :precision => 5,  :scale => 2
    t.decimal  "volume",                                                         :precision => 5,  :scale => 2
    t.string   "temperature",                                                    :limit => 11
    t.integer  "evropallet"
    t.integer  "bigpallet"
    t.integer  "belts_count"
    t.decimal  "height",                                                         :precision => 5,  :scale => 2
    t.decimal  "width",                                                          :precision => 5,  :scale => 2
    t.decimal  "length",                                                         :precision => 5,  :scale => 2
    t.boolean  "loading_up"
    t.boolean  "loading_down"
    t.boolean  "loading_side"
    t.integer  "crate_body"
    t.integer  "customer_company_id"
    t.integer  "carrier_company_id"
    t.integer  "driver_id"
    t.integer  "car_id"
    t.integer  "cars_count"
    t.decimal  "carrier_rate_summ",                                              :precision => 10, :scale => 2
    t.integer  "carrier_rate_podacha_hours"
    t.decimal  "carrier_rate_hour_price",                                        :precision => 5,  :scale => 2
    t.decimal  "carrier_dop_prab_price",                                         :precision => 10, :scale => 2
    t.decimal  "carrier_dop_prab_count",                                         :precision => 5,  :scale => 2
    t.decimal  "carrier_dop_prab_summ",                                          :precision => 10, :scale => 2
    t.decimal  "carrier_dop_prostoy_price",                                      :precision => 10, :scale => 2
    t.integer  "carrier_dop_prostoy_count"
    t.decimal  "carrier_dop_prostoy_summ",                                       :precision => 10, :scale => 2
    t.decimal  "carrier_dop_dop_tochka_pogr_price",                              :precision => 10, :scale => 2
    t.integer  "carrier_dop_dop_tochka_pogr_count"
    t.decimal  "carrier_dop_dop_tochka_pogr_summ",                               :precision => 10, :scale => 2
    t.decimal  "carrier_dop_dop_tochka_razgr_price",                             :precision => 10, :scale => 2
    t.integer  "carrier_dop_dop_tochka_razgr_count"
    t.decimal  "carrier_dop_dop_tochka_razgr_summ",                              :precision => 10, :scale => 2
    t.decimal  "carrier_dop_vozvr_price",                                        :precision => 10, :scale => 2
    t.integer  "carrier_dop_vozvr_count"
    t.decimal  "carrier_dop_vozvr_summ",                                         :precision => 10, :scale => 2
    t.decimal  "carrier_dop_pereg_price",                                        :precision => 10, :scale => 2
    t.decimal  "carrier_dop_pereg_count",                                        :precision => 5,  :scale => 2
    t.decimal  "carrier_dop_pereg_summ",                                         :precision => 10, :scale => 2
    t.decimal  "carrier_dop_night_stay_price",                                   :precision => 10, :scale => 2
    t.integer  "carrier_dop_night_stay_count"
    t.decimal  "carrier_dop_night_stay_summ",                                    :precision => 10, :scale => 2
    t.decimal  "carrier_dop_mezgorod_price",                                     :precision => 10, :scale => 2
    t.integer  "carrier_dop_mezgorod_count"
    t.decimal  "carrier_dop_mezgorod_summ",                                      :precision => 10, :scale => 2
    t.decimal  "carrier_dop_rastentovka_price",                                  :precision => 10, :scale => 2
    t.integer  "carrier_dop_rastentovka_count"
    t.decimal  "carrier_dop_rastentovka_summ",                                   :precision => 10, :scale => 2
    t.decimal  "carrier_dop_soprov_price",                                       :precision => 10, :scale => 2
    t.integer  "carrier_dop_soprov_count"
    t.decimal  "carrier_dop_soprov_summ",                                        :precision => 10, :scale => 2
    t.decimal  "carrier_dop_negabarit_price",                                    :precision => 10, :scale => 2
    t.integer  "carrier_dop_negabarit_count"
    t.decimal  "carrier_dop_negabarit_summ",                                     :precision => 10, :scale => 2
    t.decimal  "carrier_dop_gruzch_price",                                       :precision => 10, :scale => 2
    t.integer  "carrier_dop_gruzch_count"
    t.decimal  "carrier_dop_gruzch_summ",                                        :precision => 10, :scale => 2
    t.decimal  "carrier_dop_summ",                                               :precision => 10, :scale => 2
    t.integer  "carrier_rate_hours"
    t.decimal  "carrier_rate_sverh_price",                                       :precision => 10, :scale => 2
    t.integer  "carrier_rate_sverh_count"
    t.decimal  "carrier_rate_sverh_summ",                                        :precision => 10, :scale => 2
    t.decimal  "carrier_rate_total_summ",                                        :precision => 10, :scale => 2
    t.decimal  "carrier_dop_discount",                                           :precision => 10, :scale => 2
    t.decimal  "carrier_summ",                                                   :precision => 10, :scale => 2
    t.decimal  "carrier_total_summ",                                             :precision => 10, :scale => 2
    t.decimal  "carrier_summ_to_pay",                                            :precision => 10, :scale => 2
    t.decimal  "carrier_prepayment",                                             :precision => 10, :scale => 2
    t.integer  "carrier_payment_method_id"
    t.integer  "carrier_payment_way_id"
    t.integer  "carrier_maturity"
    t.integer  "carrier_payment_doc_id"
    t.integer  "carrier_documents_return_term"
    t.decimal  "customer_rate_summ",                                             :precision => 10, :scale => 2
    t.integer  "customer_rate_podacha_hours"
    t.decimal  "customer_rate_hour_price",                                       :precision => 10, :scale => 2
    t.decimal  "customer_dop_summ",                                              :precision => 10, :scale => 2
    t.integer  "customer_rate_hours"
    t.decimal  "customer_rate_sverh_price",                                      :precision => 10, :scale => 2
    t.integer  "customer_rate_sverh_count"
    t.decimal  "customer_rate_sverh_summ",                                       :precision => 10, :scale => 2
    t.decimal  "customer_rate_total_summ",                                       :precision => 10, :scale => 2
    t.decimal  "customer_dop_prab_price",                                        :precision => 10, :scale => 2
    t.decimal  "customer_dop_prab_count",                                        :precision => 5,  :scale => 2
    t.decimal  "customer_dop_prab_summ",                                         :precision => 10, :scale => 2
    t.decimal  "customer_dop_dop_tochka_pogr_price",                             :precision => 10, :scale => 2
    t.integer  "customer_dop_dop_tochka_pogr_count"
    t.decimal  "customer_dop_dop_tochka_pogr_summ",                              :precision => 10, :scale => 2
    t.decimal  "customer_dop_dop_tochka_razgr_price",                            :precision => 10, :scale => 2
    t.integer  "customer_dop_dop_tochka_razgr_count"
    t.decimal  "customer_dop_dop_tochka_razgr_summ",                             :precision => 10, :scale => 2
    t.decimal  "customer_dop_vozvr_price",                                       :precision => 10, :scale => 2
    t.integer  "customer_dop_vozvr_count"
    t.decimal  "customer_dop_vozvr_summ",                                        :precision => 10, :scale => 2
    t.decimal  "customer_dop_pereg_price",                                       :precision => 10, :scale => 2
    t.decimal  "customer_dop_pereg_count",                                       :precision => 5,  :scale => 2
    t.decimal  "customer_dop_pereg_summ",                                        :precision => 10, :scale => 2
    t.decimal  "customer_dop_night_stay_price",                                  :precision => 10, :scale => 2
    t.integer  "customer_dop_night_stay_count"
    t.decimal  "customer_dop_night_stay_summ",                                   :precision => 10, :scale => 2
    t.decimal  "customer_dop_mezgorod_price",                                    :precision => 10, :scale => 2
    t.integer  "customer_dop_mezgorod_count"
    t.decimal  "customer_dop_mezgorod_summ",                                     :precision => 10, :scale => 2
    t.decimal  "customer_dop_rastentovka_price",                                 :precision => 10, :scale => 2
    t.integer  "customer_dop_rastentovka_count"
    t.decimal  "customer_dop_rastentovka_summ",                                  :precision => 10, :scale => 2
    t.decimal  "customer_dop_soprov_price",                                      :precision => 10, :scale => 2
    t.integer  "customer_dop_soprov_count"
    t.decimal  "customer_dop_soprov_summ",                                       :precision => 10, :scale => 2
    t.decimal  "customer_dop_negabarit_price",                                   :precision => 10, :scale => 2
    t.integer  "customer_dop_negabarit_count"
    t.decimal  "customer_dop_negabarit_summ",                                    :precision => 10, :scale => 2
    t.decimal  "customer_dop_gruzch_price",                                      :precision => 10, :scale => 2
    t.integer  "customer_dop_gruzch_count"
    t.decimal  "customer_dop_gruzch_summ",                                       :precision => 10, :scale => 2
    t.decimal  "customer_total_summ",                                            :precision => 10, :scale => 2
    t.decimal  "customer_summ_to_pay",                                           :precision => 10, :scale => 2
    t.string   "customer_invoice_number"
    t.decimal  "customer_payed_summ",                                            :precision => 10, :scale => 2
    t.decimal  "customer_prepayment",                                            :precision => 10, :scale => 2
    t.integer  "customer_payment_method_id"
    t.integer  "customer_payment_way_id"
    t.integer  "customer_maturity"
    t.integer  "customer_payment_doc_id"
    t.integer  "customer_documents_return_term"
    t.integer  "user_id"
    t.string   "manager_fot"
    t.decimal  "manager_percent",                                                :precision => 5,  :scale => 2
    t.decimal  "manager_premium",                                                :precision => 10, :scale => 2
    t.decimal  "manager_total_summ",                                             :precision => 10, :scale => 2
    t.integer  "account_expenditure"
    t.string   "account_money"
    t.datetime "account_parish_date"
    t.decimal  "account_parish_summ",                                            :precision => 10, :scale => 2
    t.datetime "account_consumption_date"
    t.integer  "account_consumption_respect"
    t.decimal  "account_consumption_summ",                                       :precision => 10, :scale => 2
    t.string   "responsibility_transport_replacement_requirement"
    t.string   "compensation_for_damage"
    t.string   "undeliver_transport_loading_city"
    t.string   "undeliver_transport_loading_intercity"
    t.string   "transport_late_loading_city"
    t.string   "transport_late_loading_intercity"
    t.string   "transport_late_destination_city"
    t.string   "transport_late_destination_intercity"
    t.string   "transport_refuse_loading_day_city"
    t.string   "transport_refuse_loading_day_intercity"
    t.string   "transport_idle_excessively_city"
    t.string   "transport_idle_excessively_intercity"
    t.string   "payment_late"
    t.string   "document_late"
    t.boolean  "customer_responsibility_car_deny_true",
    t.decimal  "customer_responsibility_car_deny_price",                         :precision => 5, :scale => 2
    t.decimal  "customer_responsibility_car_deny_summ",                          :precision => 10, :scale => 2
    t.integer  "customer_responsibility_prostoy_count"
    t.decimal  "customer_responsibility_prostoy_price",                          :precision => 5, :scale => 2
    t.decimal  "customer_responsibility_prostoy_summ",                           :precision => 10, :scale => 2
    t.integer  "customer_responsibility_payment_late_count"
    t.decimal  "customer_responsibility_payment_late_price",                     :precision => 5, :scale => 2
    t.decimal  "customer_responsibility_payment_late_summ",                      :precision => 10, :scale => 2
    t.integer  "customer_responsibility_document_late_count"
    t.decimal  "customer_responsibility_document_late_price",
    t.decimal  "customer_responsibility_document_late_summ"
    t.boolean  "carrier_responsibility_car_deny_true"
    t.decimal  "carrier_responsibility_car_deny_price",                          :precision => 5, :scale => 2
    t.decimal  "carrier_responsibility_car_deny_summ",                           :precision => 10, :scale => 2
    t.integer  "carrier_responsibility_late_count"
    t.decimal  "carrier_responsibility_late_price",                              :precision => 5, :scale => 2
    t.decimal  "carrier_responsibility_late_summ",                               :precision => 10, :scale => 2
    t.integer  "carrier_responsibility_delivery_late_count"
    t.decimal  "carrier_responsibility_delivery_late_price",                     :precision => 5, :scale => 2
    t.decimal  "carrier_responsibility_delivery_late_summ",                      :precision => 10, :scale => 2
    t.integer  "carrier_responsibility_document_late_count"
    t.decimal  "carrier_responsibility_document_late_price",                     :precision => 5, :scale => 2
    t.decimal  "carrier_responsibility_document_late_summ",                      :precision => 10, :scale => 2
    t.decimal  "carrier_responsibility_summ"
    t.decimal  "customer_responsibility_summ"
    t.string   "transport_idle_excessively_hours"
    t.string   "transport_late_loading_hours"
    t.string   "transport_late_destination_hours"
    t.string   "request_type"
    t.string   "other_conditions"
    t.integer  "bill_id"
    t.integer  "carrier_bill_id"
    t.boolean  "is_finished"
    t.string   "customer_payment_way_for_salary"
    t.string   "carrier_payment_way_for_salary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tests", :force => true do |t|
    t.string   "test"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unloading_points", :force => true do |t|
    t.datetime "date"
    t.string   "time"
    t.integer  "request_id"
    t.string   "contact_person"
    t.string   "phone"
    t.integer  "point_number"
    t.string   "address"
    t.string   "phone_work"
    t.string   "consignee"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "lastname"
    t.string   "firstname"
    t.string   "middlename"
    t.string   "city"
    t.string   "district"
    t.string   "street"
    t.string   "house"
    t.string   "housing"
    t.string   "apartment"
    t.string   "mobile_phone_business"
    t.string   "mobile_phone_personal"
    t.string   "email"
    t.string   "icq"
    t.string   "skype"
    t.string   "home_phone"
    t.string   "passport_series"
    t.datetime "passport_issue_date"
    t.string   "passport_issue_whom"
    t.string   "passport_address"
    t.string   "citizenship"
    t.datetime "date_of_birth"
    t.string   "about"
    t.string   "position"
    t.decimal  "salary",                :precision => 10, :scale => 2
    t.decimal  "premium_percent",       :precision => 5, :scale => 2
    t.decimal  "request_percent",       :precision => 5, :scale => 2
    t.string   "global_experience"
    t.string   "unbroken_experience"
    t.string   "visluga_let"
    t.string   "university"
    t.string   "speciality"
    t.string   "inn"
    t.string   "pensionnoe"
    t.string   "medical_insurance"
    t.string   "working_contract"
    t.string   "role"
    t.string   "login"
    t.string   "password_salt"
    t.string   "password_hash"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
