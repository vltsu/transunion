Given /^an car_type page$/ do
  Factory.create(:car_type)
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
