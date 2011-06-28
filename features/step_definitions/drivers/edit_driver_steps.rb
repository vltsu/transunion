Given /^a driver page$/ do
  Factory.create(:user)
  Factory.create(:driver)
  Factory.create(:carrier_company)
  Factory.create(:carrier_company)
  visit signin_form_url
  fill_in 'username', :with => 'user'
  fill_in 'password', :with => 'password'
  click_button 'submit'
  visit drivers_path
  click_link 'showDriverLink'
end

When /^I update driver fields: middlename to "([^"]*)", company to "([^"]*)", work mobile phone to "([^"]*)"$/ do |m, c, p|
  click_link 'editDriverLink'
  fill_in "driver[middlename]", :with => m
  fill_in "driver[mobile_phone]", :with => p
  select c, :from => "driver[carrier_company_id]"
  click_button "driver_submit"
end

Then /^Driver updated with values: firstname "([^"]*)", middlename "([^"]*)", company "([^"]*)", work mobile phone "([^"]*)"$/ do |f,m,c,p|
  visit drivers_path
  click_link 'showDriverLink'
  find_by_id("driver_firstname").value.should =~ /#{f}/
  find_by_id("driver_middlename").value.should =~ /#{m}/
  find_by_id("driver_mobile_phone").value.should =~ /#{p}/
  find_by_id("driver_carrier_company_id").text.should =~ /#{c}/
end
