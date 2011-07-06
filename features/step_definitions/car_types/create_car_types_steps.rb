When /^I create an car_type with car_type "([^"]*)"$/ do |o|
  click_link 'addCar_typeLink'
  fill_in "car_type[car_type]", :with => o
  click_button "car_type_submit"
end

Then /^Car_type with car_type "([^"]*)" created$/ do |o|
  visit car_types_path
  click_link 'showCar_typeLink'
  find_by_id("car_type_car_type").value.should =~ /#{o}/
end
