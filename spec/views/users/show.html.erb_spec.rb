require 'spec_helper'

describe "users/show.html.erb" do
  before(:each) do
    @user = assign(:user, stub_model(User,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Lastname/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Firstname/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Middlename/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/City/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/District/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Street/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/House/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Housing/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Apartment/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Mobile Phone Business/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Mobile Phone Personal/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Icq/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Skype/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Home Phone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Passport Series/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Passport Issue Whom/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Passport Address/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Citizenship/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/About/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Position/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Global Experience/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Unbroken Experience/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Visluga Let/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/University/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Speciality/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Inn/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Pensionnoe/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Medical Insurance/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Working Contract/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
