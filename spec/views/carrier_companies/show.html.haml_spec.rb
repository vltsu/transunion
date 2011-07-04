require 'spec_helper'

describe "carrier_companies/show.html.haml" do
  before(:each) do
    @carrier_company = assign(:carrier_company, stub_model(CarrierCompany,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Legal Address/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Actual Address/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Company Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ogrn/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Okpo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Inn/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Kpp/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Phone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Fax/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Current Account/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Bank/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Correspondent Account/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Bik/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Operates Basis/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Company Face/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Manager Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Respons Refuse Loading Day/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Respons Idle Excessively Hours/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Respons Idle Excessively Percent/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Respons Payment Late/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Respons Transport Replacement Req/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Respons Compansation For Damage/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Respons Undeliver Transport Loading/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Respons Transport Late Loading Hours/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Respons Transport Late Loading Percent/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Respons Transport Late Destination Hours/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Response Transport Late Destination Percent/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Respons Document Late/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
