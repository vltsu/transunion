Given /^an car_tonnage page$/ do
  Factory.create(:car_tonnage)
  visit car_tonnages_path
  click_link 'showCar_tonnageLink'
end

When /^I update car_tonnage field to "([^"]*)"$/ do |o|
  click_link 'editCar_tonnageLink'
  fill_in "car_tonnage[car_tonnage]", :with => o
  click_button "car_tonnage_submit"
end

Then /^Car_tonnage updated with value: car_tonnage "([^"]*)"$/ do |o|
  visit car_tonnages_path
  click_link 'showCar_tonnageLink'
  find_by_id("car_tonnage_car_tonnage").value.should =~ /#{o}/
end
