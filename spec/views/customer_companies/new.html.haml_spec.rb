require 'spec_helper'

describe "customer_companies/new.html.haml" do
  before(:each) do
    assign(:customer_company, stub_model(CustomerCompany,
      :title => "MyString",
      :legal_address => "MyString",
      : => "",
      :opf_id => 1,
      :company_face_id => 1,
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
      :manager_name => "MyString",
      :respons_refuse_loading_day => "9.99",
      :respons_idle_excessively_hours => "9.99",
      :respons_idle_excessively_percent => "9.99",
      :respons_payment_late => "9.99",
      :respons_transport_replacement_req => "MyString",
      :respons_compensation_for_damage => "MyString",
      :respons_undeliver_transport_loading => "9.99",
      :respons_transport_late_loading_hours => "9.99",
      :respons_transport_late_loading_percent => "9.99",
      :respons_transport_late_destination_hours => "9.99",
      :response_transport_late_destination_percent => "9.99",
      :response_transport_late_destination_percent => "9.99",
      :respons_document_late => "9.99",
      :black_label => false
    ).as_new_record)
  end

  it "renders new customer_company form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => customer_companies_path, :method => "post" do
      assert_select "input#customer_company_title", :name => "customer_company[title]"
      assert_select "input#customer_company_legal_address", :name => "customer_company[legal_address]"
      assert_select "input#customer_company_", :name => "customer_company[]"
      assert_select "input#customer_company_opf_id", :name => "customer_company[opf_id]"
      assert_select "input#customer_company_company_face_id", :name => "customer_company[company_face_id]"
      assert_select "input#customer_company_ogrn", :name => "customer_company[ogrn]"
      assert_select "input#customer_company_okpo", :name => "customer_company[okpo]"
      assert_select "input#customer_company_inn", :name => "customer_company[inn]"
      assert_select "input#customer_company_kpp", :name => "customer_company[kpp]"
      assert_select "input#customer_company_phone", :name => "customer_company[phone]"
      assert_select "input#customer_company_fax", :name => "customer_company[fax]"
      assert_select "input#customer_company_email", :name => "customer_company[email]"
      assert_select "input#customer_company_current_account", :name => "customer_company[current_account]"
      assert_select "input#customer_company_bank", :name => "customer_company[bank]"
      assert_select "input#customer_company_correspondent_account", :name => "customer_company[correspondent_account]"
      assert_select "input#customer_company_bik", :name => "customer_company[bik]"
      assert_select "input#customer_company_operates_basis", :name => "customer_company[operates_basis]"
      assert_select "input#customer_company_manager_name", :name => "customer_company[manager_name]"
      assert_select "input#customer_company_respons_refuse_loading_day", :name => "customer_company[respons_refuse_loading_day]"
      assert_select "input#customer_company_respons_idle_excessively_hours", :name => "customer_company[respons_idle_excessively_hours]"
      assert_select "input#customer_company_respons_idle_excessively_percent", :name => "customer_company[respons_idle_excessively_percent]"
      assert_select "input#customer_company_respons_payment_late", :name => "customer_company[respons_payment_late]"
      assert_select "input#customer_company_respons_transport_replacement_req", :name => "customer_company[respons_transport_replacement_req]"
      assert_select "input#customer_company_respons_compensation_for_damage", :name => "customer_company[respons_compensation_for_damage]"
      assert_select "input#customer_company_respons_undeliver_transport_loading", :name => "customer_company[respons_undeliver_transport_loading]"
      assert_select "input#customer_company_respons_transport_late_loading_hours", :name => "customer_company[respons_transport_late_loading_hours]"
      assert_select "input#customer_company_respons_transport_late_loading_percent", :name => "customer_company[respons_transport_late_loading_percent]"
      assert_select "input#customer_company_respons_transport_late_destination_hours", :name => "customer_company[respons_transport_late_destination_hours]"
      assert_select "input#customer_company_response_transport_late_destination_percent", :name => "customer_company[response_transport_late_destination_percent]"
      assert_select "input#customer_company_response_transport_late_destination_percent", :name => "customer_company[response_transport_late_destination_percent]"
      assert_select "input#customer_company_respons_document_late", :name => "customer_company[respons_document_late]"
      assert_select "input#customer_company_black_label", :name => "customer_company[black_label]"
    end
  end
end
