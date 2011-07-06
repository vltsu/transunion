When /^I create an car_tonnage with car_tonnage "([^"]*)"$/ do |o|
  click_link 'addCar_tonnageLink'
  fill_in "car_tonnage[car_tonnage]", :with => o
  click_button "car_tonnage_submit"
end

Then /^Car_tonnage with car_tonnage "([^"]*)" created$/ do |o|
  visit car_tonnages_path
  click_link 'showCar_tonnageLink'
  find_by_id("car_tonnage_car_tonnage").value.should =~ /#{o}/
end
