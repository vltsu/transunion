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

ActiveRecord::Schema.define(:version => 20110622124705) do

  create_table "carrier_companies", :force => true do |t|
    t.string   "title"
    t.string   "legal_address"
    t.string   "actual_address"
    t.string   "company_type"
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
    t.string   "respons_refuse_loading_day"
    t.string   "respons_idle_excessively_hours"
    t.string   "respons_idle_excessively_percent"
    t.string   "respons_payment_late"
    t.string   "respons_transport_replacement_req"
    t.string   "respons_compensation_for_damage"
    t.string   "respons_undeliver_transport_loading"
    t.string   "respons_transport_late_loading_hours"
    t.string   "respons_transport_late_loading_percent"
    t.string   "respons_transport_late_destination_hours"
    t.string   "respons_transport_late_destination_percent"
    t.string   "respons_document_late"
    t.boolean  "black_label"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cartypes", :force => true do |t|
    t.string   "cartype"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.decimal  "salary",                :precision => 10, :scale => 0
    t.decimal  "premium_percent",       :precision => 10, :scale => 0
    t.decimal  "request_percent",       :precision => 10, :scale => 0
    t.string   "global_experience"
    t.string   "unbroken_experience"
    t.string   "visluga_let"
    t.string   "university"
    t.string   "speciality"
    t.string   "inn"
    t.string   "pensionnoe"
    t.string   "medical_insurance"
    t.string   "working_contract"
    t.integer  "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
