require 'spec_helper'

describe "carrier_companies/edit.html.haml" do
  before(:each) do
    @carrier_company = assign(:carrier_company, stub_model(CarrierCompany,
      :title => "MyString",
      :legal_address => "MyString",
      :actual_address => "MyString",
      :company_type => "MyString",
      :ogrn => "MyString",
      :okpo => "MyString",
      :inn => "MyString",
      :kpp => "MyString",
      :phone => "MyString",
      :fax => "MyString",
      :email => "MyString",
      :current_account => "MyString",
      :bank => "MyString",
      :correspondent_account => "MyString",
      :bik => "MyString",
      :operates_basis => "MyString",
      :company_face => "MyString",
      :manager_name => "MyString",
      :respons_refuse_loading_day => "MyString",
      :respons_idle_excessively_hours => "MyString",
      :respons_idle_excessively_percent => "MyString",
      :respons_payment_late => "MyString",
      :respons_transport_replacement_req => "MyString",
      :respons_compansation_for_damage => "MyString",
      :respons_undeliver_transport_loading => "MyString",
      :respons_transport_late_loading_hours => "MyString",
      :respons_transport_late_loading_percent => "MyString",
      :respons_transport_late_destination_hours => "MyString",
      :response_transport_late_destination_percent => "MyString",
      :respons_document_late => "MyString",
      :black_label => false
    ))
  end

  it "renders the edit carrier_company form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => carrier_companies_path(@carrier_company), :method => "post" do
      assert_select "input#carrier_company_title", :name => "carrier_company[title]"
      assert_select "input#carrier_company_legal_address", :name => "carrier_company[legal_address]"
      assert_select "input#carrier_company_actual_address", :name => "carrier_company[actual_address]"
      assert_select "input#carrier_company_company_type", :name => "carrier_company[company_type]"
      assert_select "input#carrier_company_ogrn", :name => "carrier_company[ogrn]"
      assert_select "input#carrier_company_okpo", :name => "carrier_company[okpo]"
      assert_select "input#carrier_company_inn", :name => "carrier_company[inn]"
      assert_select "input#carrier_company_kpp", :name => "carrier_company[kpp]"
      assert_select "input#carrier_company_phone", :name => "carrier_company[phone]"
      assert_select "input#carrier_company_fax", :name => "carrier_company[fax]"
      assert_select "input#carrier_company_email", :name => "carrier_company[email]"
      assert_select "input#carrier_company_current_account", :name => "carrier_company[current_account]"
      assert_select "input#carrier_company_bank", :name => "carrier_company[bank]"
      assert_select "input#carrier_company_correspondent_account", :name => "carrier_company[correspondent_account]"
      assert_select "input#carrier_company_bik", :name => "carrier_company[bik]"
      assert_select "input#carrier_company_operates_basis", :name => "carrier_company[operates_basis]"
      assert_select "input#carrier_company_company_face", :name => "carrier_company[company_face]"
      assert_select "input#carrier_company_manager_name", :name => "carrier_company[manager_name]"
      assert_select "input#carrier_company_respons_refuse_loading_day", :name => "carrier_company[respons_refuse_loading_day]"
      assert_select "input#carrier_company_respons_idle_excessively_hours", :name => "carrier_company[respons_idle_excessively_hours]"
      assert_select "input#carrier_company_respons_idle_excessively_percent", :name => "carrier_company[respons_idle_excessively_percent]"
      assert_select "input#carrier_company_respons_payment_late", :name => "carrier_company[respons_payment_late]"
      assert_select "input#carrier_company_respons_transport_replacement_req", :name => "carrier_company[respons_transport_replacement_req]"
      assert_select "input#carrier_company_respons_compansation_for_damage", :name => "carrier_company[respons_compansation_for_damage]"
      assert_select "input#carrier_company_respons_undeliver_transport_loading", :name => "carrier_company[respons_undeliver_transport_loading]"
      assert_select "input#carrier_company_respons_transport_late_loading_hours", :name => "carrier_company[respons_transport_late_loading_hours]"
      assert_select "input#carrier_company_respons_transport_late_loading_percent", :name => "carrier_company[respons_transport_late_loading_percent]"
      assert_select "input#carrier_company_respons_transport_late_destination_hours", :name => "carrier_company[respons_transport_late_destination_hours]"
      assert_select "input#carrier_company_response_transport_late_destination_percent", :name => "carrier_company[response_transport_late_destination_percent]"
      assert_select "input#carrier_company_respons_document_late", :name => "carrier_company[respons_document_late]"
      assert_select "input#carrier_company_black_label", :name => "carrier_company[black_label]"
    end
  end
end
