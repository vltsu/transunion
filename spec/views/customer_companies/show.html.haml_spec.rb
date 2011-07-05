require 'spec_helper'

describe "customer_companies/show.html.haml" do
  before(:each) do
    @customer_company = assign(:customer_company, stub_model(CustomerCompany,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Legal Address/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
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
    rendered.should match(/Manager Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Respons Transport Replacement Req/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Respons Compensation For Damage/)
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
    rendered.should match(/false/)
  end
end
