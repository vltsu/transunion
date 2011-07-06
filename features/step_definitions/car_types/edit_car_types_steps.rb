Given /^an car_type page$/ do
  Factory.create(:admin)
  Factory.create(:car_type)
  visit signin_form_url
  fill_in 'username', :with => 'admin'
  fill_in 'password', :with => 'password'
  click_button 'submit'
  visit car_types_path
  click_link 'showCar_typeLink'
end

When /^I update car_type field to "([^"]*)"$/ do |o|
  click_link 'editCar_typeLink'
  fill_in "car_type[car_type]", :with => o
  click_button "car_type_submit"
end

Then /^Car_type updated with value: car_type "([^"]*)"$/ do |o|
  visit car_types_path
  click_link 'showCar_typeLink'
  find_by_id("car_type_car_type").value.should =~ /#{o}/
end
