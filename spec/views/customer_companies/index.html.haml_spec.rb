require 'spec_helper'

describe "customer_companies/index.html.haml" do
  before(:each) do
    assign(:customer_companies, [
      stub_model(CustomerCompany,
        :title => "Title",
        :legal_address => "Legal Address",
        : => "",
        :opf_id => 1,
        :company_face_id => 1,
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
        :manager_name => "Manager Name",
        :respons_refuse_loading_day => "9.99",
        :respons_idle_excessively_hours => "9.99",
        :respons_idle_excessively_percent => "9.99",
        :respons_payment_late => "9.99",
        :respons_transport_replacement_req => "Respons Transport Replacement Req",
        :respons_compensation_for_damage => "Respons Compensation For Damage",
        :respons_undeliver_transport_loading => "9.99",
        :respons_transport_late_loading_hours => "9.99",
        :respons_transport_late_loading_percent => "9.99",
        :respons_transport_late_destination_hours => "9.99",
        :response_transport_late_destination_percent => "9.99",
        :response_transport_late_destination_percent => "9.99",
        :respons_document_late => "9.99",
        :black_label => false
      ),
      stub_model(CustomerCompany,
        :title => "Title",
        :legal_address => "Legal Address",
        : => "",
        :opf_id => 1,
        :company_face_id => 1,
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
        :manager_name => "Manager Name",
        :respons_refuse_loading_day => "9.99",
        :respons_idle_excessively_hours => "9.99",
        :respons_idle_excessively_percent => "9.99",
        :respons_payment_late => "9.99",
        :respons_transport_replacement_req => "Respons Transport Replacement Req",
        :respons_compensation_for_damage => "Respons Compensation For Damage",
        :respons_undeliver_transport_loading => "9.99",
        :respons_transport_late_loading_hours => "9.99",
        :respons_transport_late_loading_percent => "9.99",
        :respons_transport_late_destination_hours => "9.99",
        :response_transport_late_destination_percent => "9.99",
        :response_transport_late_destination_percent => "9.99",
        :respons_document_late => "9.99",
        :black_label => false
      )
    ])
  end

  it "renders a list of customer_companies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Legal Address".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
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
    assert_select "tr>td", :text => "Manager Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Respons Transport Replacement Req".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Respons Compensation For Damage".to_s, :count => 2
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
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
