require 'spec_helper'

describe "carrier_companies/index.html.haml" do
  before(:each) do
    assign(:carrier_companies, [
      stub_model(CarrierCompany,
        :title => "Title",
        :legal_address => "Legal Address",
        :actual_address => "Actual Address",
        :company_type => "Company Type",
        :ogrn => "Ogrn",
        :okpo => "Okpo",
        :inn => "Inn",
        :kpp => "Kpp",
        :phone => "Phone",
        :fax => "Fax",
        :email => "Email",
        :current_account => "Current Account",
        :bank => "Bank",
        :correspondent_account => "Correspondent Account",
        :bik => "Bik",
        :operates_basis => "Operates Basis",
        :company_face => "Company Face",
        :manager_name => "Manager Name",
        :respons_refuse_loading_day => "Respons Refuse Loading Day",
        :respons_idle_excessively_hours => "Respons Idle Excessively Hours",
        :respons_idle_excessively_percent => "Respons Idle Excessively Percent",
        :respons_payment_late => "Respons Payment Late",
        :respons_transport_replacement_req => "Respons Transport Replacement Req",
        :respons_compansation_for_damage => "Respons Compansation For Damage",
        :respons_undeliver_transport_loading => "Respons Undeliver Transport Loading",
        :respons_transport_late_loading_hours => "Respons Transport Late Loading Hours",
        :respons_transport_late_loading_percent => "Respons Transport Late Loading Percent",
        :respons_transport_late_destination_hours => "Respons Transport Late Destination Hours",
        :response_transport_late_destination_percent => "Response Transport Late Destination Percent",
        :respons_document_late => "Respons Document Late",
        :black_label => false
      ),
      stub_model(CarrierCompany,
        :title => "Title",
        :legal_address => "Legal Address",
        :actual_address => "Actual Address",
        :company_type => "Company Type",
        :ogrn => "Ogrn",
        :okpo => "Okpo",
        :inn => "Inn",
        :kpp => "Kpp",
        :phone => "Phone",
        :fax => "Fax",
        :email => "Email",
        :current_account => "Current Account",
        :bank => "Bank",
        :correspondent_account => "Correspondent Account",
        :bik => "Bik",
        :operates_basis => "Operates Basis",
        :company_face => "Company Face",
        :manager_name => "Manager Name",
        :respons_refuse_loading_day => "Respons Refuse Loading Day",
        :respons_idle_excessively_hours => "Respons Idle Excessively Hours",
        :respons_idle_excessively_percent => "Respons Idle Excessively Percent",
        :respons_payment_late => "Respons Payment Late",
        :respons_transport_replacement_req => "Respons Transport Replacement Req",
        :respons_compansation_for_damage => "Respons Compansation For Damage",
        :respons_undeliver_transport_loading => "Respons Undeliver Transport Loading",
        :respons_transport_late_loading_hours => "Respons Transport Late Loading Hours",
        :respons_transport_late_loading_percent => "Respons Transport Late Loading Percent",
        :respons_transport_late_destination_hours => "Respons Transport Late Destination Hours",
        :response_transport_late_destination_percent => "Response Transport Late Destination Percent",
        :respons_document_late => "Respons Document Late",
        :black_label => false
      )
    ])
  end

  it "renders a list of carrier_companies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Legal Address".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Actual Address".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Company Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ogrn".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Okpo".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Inn".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Kpp".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Fax".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Current Account".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Bank".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Correspondent Account".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Bik".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Operates Basis".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Company Face".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Manager Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Respons Refuse Loading Day".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Respons Idle Excessively Hours".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Respons Idle Excessively Percent".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Respons Payment Late".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Respons Transport Replacement Req".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Respons Compansation For Damage".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Respons Undeliver Transport Loading".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Respons Transport Late Loading Hours".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Respons Transport Late Loading Percent".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Respons Transport Late Destination Hours".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Response Transport Late Destination Percent".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Respons Document Late".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
