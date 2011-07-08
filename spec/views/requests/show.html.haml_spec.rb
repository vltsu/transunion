require 'spec_helper'

describe "requests/show.html.haml" do
  before(:each) do
    @request = assign(:request, stub_model(Request,
      :item => "Item",
      :cargo_classification_id => 1,
      :weight => "9.99",
      :volume => "9.99",
      :temperature => 1,
      :evropallet => 1,
      :bigpallet => 1,
      :belts_count => 1,
      :height => "9.99",
      :width => "9.99",
      :length => "9.99",
      :loading_up => false,
      :loading_down => false,
      :loading_side => false,
      :crate_body => 1,
      :customer_company_id => 1,
      :carrier_company_id => 1,
      :driver_id => 1,
      :car_id => 1,
      :cars_count => 1,
      :carrier_rate_summ => "9.99",
      :carrier_rate_podacha_hours => 1,
      :carrier_rate_hour_price => "9.99",
      :carrier_dop_prab_price => "9.99",
      :carrier_dop_prab_count => "9.99",
      :carrier_dop_prab_summ => "9.99",
      :carrier_dop_prostoy_price => "9.99",
      :carrier_dop_prostoy_count => 1,
      :carrier_dop_prostoy_summ => "9.99",
      :carrier_dop_dop_tochka_pogr_price => "9.99",
      :carrier_dop_dop_tochka_pogr_count => 1,
      :carrier_dop_dop_tochka_pogr_summ => "9.99",
      :carrier_dop_dop_tochka_razgr_price => "9.99",
      :carrier_dop_dop_tochka_razgr_count => 1,
      :carrier_dop_dop_tochka_razgr_summ => "9.99",
      :carrier_dop_vozvr_price => "9.99",
      :carrier_dop_vozvr_count => 1,
      :carrier_dop_vozvr_summ => "9.99",
      :carrier_dop_pereg_price => "9.99",
      :carrier_dop_pereg_count => "9.99",
      :carrier_dop_pereg_summ => "9.99",
      :carrier_dop_night_stay_price => "9.99",
      :carrier_dop_night_stay_count => 1,
      :carrier_dop_night_stay_summ => "9.99",
      :carrier_dop_mezgorod_price => "9.99",
      :carrier_dop_mezgorod_count => 1,
      :carrier_dop_mezgorod_summ => "9.99",
      :carrier_dop_rastentovka_price => "9.99",
      :carrier_dop_rastentovka_count => 1,
      :carrier_dop_rastentovka_summ => "9.99",
      :carrier_dop_soprov_price => "9.99",
      :carrier_dop_soprov_count => 1,
      :carrier_dop_soprov_summ => "9.99",
      :carrier_dop_negabarit_price => "9.99",
      :carrier_dop_negabarit_count => 1,
      :carrier_dop_negabarit_summ => "9.99",
      :carrier_dop_gruzch_price => "9.99",
      :carrier_dop_gruzch_count => 1,
      :carrier_dop_gruzch_summ => "9.99",
      :carrier_dop_summ => "9.99",
      :carrier_total_summ => "9.99",
      :carrier_rate_hours => 1,
      :carrier_rate_sverh_price => "9.99",
      :carrier_rate_sverh_count => 1,
      :carrier_rate_sverh_summ => "9.99",
      :carrier_rate_total_summ => "9.99",
      :carrier_dop_discount => "9.99",
      :carrier_summ => "9.99",
      :carrier_total_summ => "9.99",
      :carrier_summ_to_pay => "9.99",
      :carrier_prepayment => "9.99",
      :carrier_payment_method_id => 1,
      :carrier_payment_way_id => 1,
      :carrier_maturity => 1,
      :carrier_payment_docs_id => 1,
      :carrier_documents_return_term => 1,
      :customer_rate_summ => "9.99",
      :customer_rate_podacha_hours => 1,
      :customer_rate_hour_price => "9.99",
      :customer_dop_summ => "9.99",
      :customer_rate_hours => 1,
      :customer_rate_sverh_price => "9.99",
      :customer_rate_sverh_count => 1,
      :customer_rate_sverh_summ => "9.99",
      :customer_rate_total_summ => "9.99",
      :customer_dop_prab_price => "9.99",
      :customer_dop_prab_count => "9.99",
      :customer_dop_prab_summ => "9.99",
      :customer_dop_dop_tochka_pogr_price => "9.99",
      :customer_dop_dop_tochka_pogr_count => 1,
      :customer_dop_dop_tochka_pogr_summ => "9.99",
      :customer_dop_dop_tochka_razgr_price => "9.99",
      :customer_dop_dop_tochka_razgr_count => 1,
      :customer_dop_dop_tochka_razgr_summ => "9.99",
      :customer_dop_vozvr_price => "9.99",
      :customer_dop_vozvr_count => 1,
      :customer_dop_vozvr_summ => "9.99",
      :customer_dop_pereg_price => "9.99",
      :customer_dop_pereg_count => "9.99",
      :customer_dop_pereg_summ => "9.99",
      :customer_dop_night_stay_price => "9.99",
      :customer_dop_night_stay_count => 1,
      :customer_dop_night_stay_summ => "9.99",
      :customer_dop_mezgorod_price => "9.99",
      :customer_dop_mezgorod_count => 1,
      :customer_dop_mezgorod_summ => "9.99",
      :customer_dop_rastentovka_price => "9.99",
      :customer_dop_rastentovka_count => 1,
      :customer_dop_rastentovka_summ => "9.99",
      :customer_dop_soprov_price => "9.99",
      :customer_dop_soprov_count => 1,
      :customer_dop_soprov_summ => "9.99",
      :customer_dop_negabarit_price => "9.99",
      :customer_dop_negabarit_count => 1,
      :customer_dop_negabarit_summ => "9.99",
      :customer_dop_gruzch_price => "9.99",
      :customer_dop_gruzch_count => 1,
      :customer_dop_gruzch_summ => "9.99",
      :customer_total_summ => "9.99",
      :customer_summ_to_pay => "9.99",
      :customer_invoice_number => "Customer Invoice Number",
      :customer_payed_summ => "9.99",
      :customer_prepayment => "9.99",
      :customer_payment_method_id => 1,
      :customer_payment_way_id => 1,
      :customer_maturity => 1,
      :customer_payment_doc_id => 1,
      :customer_documents_return_term => 1,
      :user_id => 1,
      :manager_fot => "Manager Fot",
      :manager_percent => "9.99",
      :manager_premium => "9.99",
      :manager_total_summ => "9.99",
      :account_expenditure => 1,
      :account_money => "Account Money",
      :account_parish_summ => "9.99",
      :account_consumption_respect => 1,
      :account_consumption_summ => "9.99",
      :responsibility_transport_replacement_requirement => "Responsibility Transport Replacement Requirement",
      :compensation_for_damage => "Compensation For Damage",
      :undeliver_transport_loading_city => "Undeliver Transport Loading City",
      :undeliver_transport_loading_intercity => "Undeliver Transport Loading Intercity",
      :transport_late_loading_city => "Transport Late Loading City",
      :transport_late_loading_intercity => "Transport Late Loading Intercity",
      :transport_late_destination_city => "Transport Late Destination City",
      :transport_late_destination_intercity => "Transport Late Destination Intercity",
      :transport_refuse_loading_day_city => "Transport Refuse Loading Day City",
      :transport_refuse_loading_day_intercity => "Transport Refuse Loading Day Intercity",
      :transport_idle_excessively_city => "Transport Idle Excessively City",
      :transport_idle_excessively_intercity => "Transport Idle Excessively Intercity",
      :payment_late => "Payment Late",
      :document_late => "Document Late",
      :customer_responsibility_car_deny_price => "9.99",
      :customer_responsibility_car_deny_summ => "9.99",
      :customer_responsibility_prostoy_count => "Customer Responsibility Prostoy Count",
      :customer_responsibility_prostoy_price => "9.99",
      :customer_responsibility_prostoy_summ => "9.99",
      :customer_responsibility_payment_late_count => "Customer Responsibility Payment Late Count",
      :customer_responsibility_payment_late_price => "9.99",
      :customer_responsibility_payment_late_summ => "9.99",
      :customer_responsibility_document_late_count => "Customer Responsibility Document Late Count",
      :customer_responsibility_document_late_price => "Customer Responsibility Document Late Price",
      :customer_responsibility_document_late_summ => "Customer Responsibility Document Late Summ",
      :carrier_responsibility_car_deny_price => "Carrier Responsibility Car Deny Price",
      :carrier_responsibility_car_deny_summ => "Carrier Responsibility Car Deny Summ",
      :carrier_responsibility_late_count => "Carrier Responsibility Late Count",
      :carrier_responsibility_late_price => "Carrier Responsibility Late Price",
      :carrier_responsibility_late_summ => "Carrier Responsibility Late Summ",
      :carrier_responsibility_delivery_late_count => "Carrier Responsibility Delivery Late Count",
      :carrier_responsibility_delivery_late_price => "Carrier Responsibility Delivery Late Price",
      :carrier_responsibility_delivery_late_summ => "Carrier Responsibility Delivery Late Summ",
      :carrier_responsibility_document_late_count => "Carrier Responsibility Document Late Count",
      :carrier_responsibility_document_late_price => "Carrier Responsibility Document Late Price",
      :carrier_responsibility_document_late_summ => "Carrier Responsibility Document Late Summ",
      :carrier_responsibility_summ => "Carrier Responsibility Summ",
      :customer_responsibility_summ => "Customer Responsibility Summ",
      :transport_idle_excessively_hours => "Transport Idle Excessively Hours",
      :transport_late_loading_hours => "Transport Late Loading Hours",
      :transport_late_destination_hours => "Transport Late Destination Hours",
      :request_type => "Request Type",
      :other_conditions => "Other Conditions",
      :carrier_rate_total_summ => "9.99",
      :customer_rate_total_summ => "9.99",
      :bill_id => 1,
      :is_finished => false,
      :customer_payment_way_for_salary => "Customer Payment Way For Salary",
      :carrier_payment_way_for_salary => "Carrier Payment Way For Salary"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Item/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Customer Invoice Number/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Manager Fot/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Account Money/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Responsibility Transport Replacement Requirement/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Compensation For Damage/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Undeliver Transport Loading City/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Undeliver Transport Loading Intercity/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Transport Late Loading City/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Transport Late Loading Intercity/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Transport Late Destination City/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Transport Late Destination Intercity/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Transport Refuse Loading Day City/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Transport Refuse Loading Day Intercity/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Transport Idle Excessively City/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Transport Idle Excessively Intercity/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Payment Late/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Document Late/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Customer Responsibility Prostoy Count/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Customer Responsibility Payment Late Count/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Customer Responsibility Document Late Count/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Customer Responsibility Document Late Price/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Customer Responsibility Document Late Summ/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Carrier Responsibility Car Deny Price/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Carrier Responsibility Car Deny Summ/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Carrier Responsibility Late Count/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Carrier Responsibility Late Price/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Carrier Responsibility Late Summ/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Carrier Responsibility Delivery Late Count/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Carrier Responsibility Delivery Late Price/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Carrier Responsibility Delivery Late Summ/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Carrier Responsibility Document Late Count/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Carrier Responsibility Document Late Price/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Carrier Responsibility Document Late Summ/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Carrier Responsibility Summ/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Customer Responsibility Summ/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Transport Idle Excessively Hours/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Transport Late Loading Hours/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Transport Late Destination Hours/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Request Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Other Conditions/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Customer Payment Way For Salary/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Carrier Payment Way For Salary/)
  end
end
