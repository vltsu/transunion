require 'spec_helper'

describe "users/index.html.erb" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :lastname => "Lastname",
        :firstname => "Firstname",
        :middlename => "Middlename",
        :city => "City",
        :district => "District",
        :street => "Street",
        :house => "House",
        :housing => "Housing",
        :apartment => "Apartment",
        :mobile_phone_business => "Mobile Phone Business",
        :mobile_phone_personal => "Mobile Phone Personal",
        :email => "Email",
        :icq => "Icq",
        :skype => "Skype",
        :home_phone => "Home Phone",
        :passport_series => "Passport Series",
        :passport_issue_whom => "Passport Issue Whom",
        :passport_address => "Passport Address",
        :citizenship => "Citizenship",
        :about => "About",
        :position => "Position",
        :salary => "9.99",
        :premium_percent => "9.99",
        :request_percent => "9.99",
        :global_experience => "Global Experience",
        :unbroken_experience => "Unbroken Experience",
        :visluga_let => "Visluga Let",
        :university => "University",
        :speciality => "Speciality",
        :inn => "Inn",
        :pensionnoe => "Pensionnoe",
        :medical_insurance => "Medical Insurance",
        :working_contract => "Working Contract",
        :type => 1,
        :role => 1
      ),
      stub_model(User,
        :lastname => "Lastname",
        :firstname => "Firstname",
        :middlename => "Middlename",
        :city => "City",
        :district => "District",
        :street => "Street",
        :house => "House",
        :housing => "Housing",
        :apartment => "Apartment",
        :mobile_phone_business => "Mobile Phone Business",
        :mobile_phone_personal => "Mobile Phone Personal",
        :email => "Email",
        :icq => "Icq",
        :skype => "Skype",
        :home_phone => "Home Phone",
        :passport_series => "Passport Series",
        :passport_issue_whom => "Passport Issue Whom",
        :passport_address => "Passport Address",
        :citizenship => "Citizenship",
        :about => "About",
        :position => "Position",
        :salary => "9.99",
        :premium_percent => "9.99",
        :request_percent => "9.99",
        :global_experience => "Global Experience",
        :unbroken_experience => "Unbroken Experience",
        :visluga_let => "Visluga Let",
        :university => "University",
        :speciality => "Speciality",
        :inn => "Inn",
        :pensionnoe => "Pensionnoe",
        :medical_insurance => "Medical Insurance",
        :working_contract => "Working Contract",
        :type => 1,
        :role => 1
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Middlename".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "District".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "House".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Housing".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Apartment".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Mobile Phone Business".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Mobile Phone Personal".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Icq".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Skype".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Home Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Passport Series".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Passport Issue Whom".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Passport Address".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Citizenship".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "About".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Position".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Global Experience".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Unbroken Experience".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Visluga Let".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "University".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Speciality".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Inn".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Pensionnoe".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Medical Insurance".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Working Contract".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
