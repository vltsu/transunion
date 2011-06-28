When /^I create a driver with firstname "([^"]*)" and lastname "([^"]*)" with company "([^"]*)"$/ do |f,l,c|
  Factory.create(:carrier_company)
  Factory.create(:carrier_company)
  click_link 'addDriverLink'
  fill_in "driver[firstname]", :with => f
  fill_in "driver[lastname]", :with => l
  select c, :from => "driver[carrier_company_id]"
  click_button "driver_submit"
end

Then /^Driver with name "([^"]*)" "([^"]*)" and "([^"]*)" company created$/ do |f,l,c|
  visit drivers_path
  click_link 'showDriverLink'
  find_by_id("driver_lastname").value.should =~ /#{l}/
  find_by_id("driver_firstname").value.should =~ /#{f}/
  find_by_id("driver_carrier_company_id").text.should =~ /#{c}/
end
