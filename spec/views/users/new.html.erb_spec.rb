require 'spec_helper'

describe "users/new.html.erb" do
  before(:each) do
    assign(:user, stub_model(User,
      :lastname => "MyString",
      :firstname => "MyString",
      :middlename => "MyString",
      :city => "MyString",
      :district => "MyString",
      :street => "MyString",
      :house => "MyString",
      :housing => "MyString",
      :apartment => "MyString",
      :mobile_phone_business => "MyString",
      :mobile_phone_personal => "MyString",
      :email => "MyString",
      :icq => "MyString",
      :skype => "MyString",
      :home_phone => "MyString",
      :passport_series => "MyString",
      :passport_issue_whom => "MyString",
      :passport_address => "MyString",
      :citizenship => "MyString",
      :about => "MyString",
      :position => "MyString",
      :salary => "9.99",
      :premium_percent => "9.99",
      :request_percent => "9.99",
      :global_experience => "MyString",
      :unbroken_experience => "MyString",
      :visluga_let => "MyString",
      :university => "MyString",
      :speciality => "MyString",
      :inn => "MyString",
      :pensionnoe => "MyString",
      :medical_insurance => "MyString",
      :working_contract => "MyString",
      :type => 1,
      :role => 1
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_lastname", :name => "user[lastname]"
      assert_select "input#user_firstname", :name => "user[firstname]"
      assert_select "input#user_middlename", :name => "user[middlename]"
      assert_select "input#user_city", :name => "user[city]"
      assert_select "input#user_district", :name => "user[district]"
      assert_select "input#user_street", :name => "user[street]"
      assert_select "input#user_house", :name => "user[house]"
      assert_select "input#user_housing", :name => "user[housing]"
      assert_select "input#user_apartment", :name => "user[apartment]"
      assert_select "input#user_mobile_phone_business", :name => "user[mobile_phone_business]"
      assert_select "input#user_mobile_phone_personal", :name => "user[mobile_phone_personal]"
      assert_select "input#user_email", :name => "user[email]"
      assert_select "input#user_icq", :name => "user[icq]"
      assert_select "input#user_skype", :name => "user[skype]"
      assert_select "input#user_home_phone", :name => "user[home_phone]"
      assert_select "input#user_passport_series", :name => "user[passport_series]"
      assert_select "input#user_passport_issue_whom", :name => "user[passport_issue_whom]"
      assert_select "input#user_passport_address", :name => "user[passport_address]"
      assert_select "input#user_citizenship", :name => "user[citizenship]"
      assert_select "input#user_about", :name => "user[about]"
      assert_select "input#user_position", :name => "user[position]"
      assert_select "input#user_salary", :name => "user[salary]"
      assert_select "input#user_premium_percent", :name => "user[premium_percent]"
      assert_select "input#user_request_percent", :name => "user[request_percent]"
      assert_select "input#user_global_experience", :name => "user[global_experience]"
      assert_select "input#user_unbroken_experience", :name => "user[unbroken_experience]"
      assert_select "input#user_visluga_let", :name => "user[visluga_let]"
      assert_select "input#user_university", :name => "user[university]"
      assert_select "input#user_speciality", :name => "user[speciality]"
      assert_select "input#user_inn", :name => "user[inn]"
      assert_select "input#user_pensionnoe", :name => "user[pensionnoe]"
      assert_select "input#user_medical_insurance", :name => "user[medical_insurance]"
      assert_select "input#user_working_contract", :name => "user[working_contract]"
      assert_select "input#user_type", :name => "user[type]"
      assert_select "input#user_role", :name => "user[role]"
    end
  end
end
