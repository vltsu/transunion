Given /^an index drivers page$/ do
end

When /^I create a driver with firstname Ivan and lastname Petrov with company CarrierCompany$/ do
  carrier_company  = Factory.create(:carrier_company)
  visit drivers_path
  click_link 'addDriverLink'
  fill_in "driver[firstname]", :with => 'Ivan'
  fill_in "driver[lastname]", :with => 'Petrov'
  select "CarrierCompany", :from => "driver[carrier_company_id]"
  click_button "driver_submit"
end

Then /^Driver with name Ivan Petrov and CarrierCompany company created$/ do
  visit drivers_path
  click_link 'showDriverLink'
  find_by_id("driver_lastname").value.should =~ /Petrov/
  find_by_id("driver_firstname").value.should =~ /Ivan/
  find_by_id("driver_carrier_company_id").text.should =~ /CarrierCompany/
end
