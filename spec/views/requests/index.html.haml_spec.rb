require 'spec_helper'

describe "requests/index.html.haml" do
  before(:each) do
    assign(:requests, [
      stub_model(Request,
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
      ),
      stub_model(Request,
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
      )
    ])
  end

  it "renders a list of requests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Item".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Customer Invoice Number".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Manager Fot".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Account Money".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Responsibility Transport Replacement Requirement".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Compensation For Damage".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Undeliver Transport Loading City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Undeliver Transport Loading Intercity".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Transport Late Loading City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Transport Late Loading Intercity".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Transport Late Destination City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Transport Late Destination Intercity".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Transport Refuse Loading Day City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Transport Refuse Loading Day Intercity".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Transport Idle Excessively City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Transport Idle Excessively Intercity".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Payment Late".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Document Late".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Customer Responsibility Prostoy Count".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Customer Responsibility Payment Late Count".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Customer Responsibility Document Late Count".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Customer Responsibility Document Late Price".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Customer Responsibility Document Late Summ".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Carrier Responsibility Car Deny Price".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Carrier Responsibility Car Deny Summ".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Carrier Responsibility Late Count".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Carrier Responsibility Late Price".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Carrier Responsibility Late Summ".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Carrier Responsibility Delivery Late Count".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Carrier Responsibility Delivery Late Price".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Carrier Responsibility Delivery Late Summ".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Carrier Responsibility Document Late Count".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Carrier Responsibility Document Late Price".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Carrier Responsibility Document Late Summ".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Carrier Responsibility Summ".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Customer Responsibility Summ".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Transport Idle Excessively Hours".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Transport Late Loading Hours".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Transport Late Destination Hours".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Request Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Other Conditions".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Customer Payment Way For Salary".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Carrier Payment Way For Salary".to_s, :count => 2
  end
end
