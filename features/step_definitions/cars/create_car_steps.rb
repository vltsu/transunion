When /^I create a car with model "([^"]*)", tonnage "([^"]*)"$/ do |m,t|
  Factory.create(:car_model)
  Factory.create(:car_tonnage)
  Factory.create(:driver)
  Factory.create(:car_type)
  click_link 'addCarLink'
  select m, :from => "car[car_model_id]"
  select t, :from => "car[car_tonnage_id]"
end

When /^type "([^"]*)", driver "([^"]*)"$/ do |t,d|
  select t, :from => "car[car_type_id]"
  select d, :from => "car[driver_id]"
  click_button "car_submit"
end

Then /^car with model "([^"]*)", tonnage "([^"]*)"$/ do |m,t|
  visit cars_path
  click_link 'showCarLink'
  find_by_id("car_car_model_id").text.should =~ /#{m}/
  find_by_id("car_car_tonnage_id").text.should =~ /#{t}/
end

Then /^car: type "([^"]*)", driver "([^"]*)" created$/ do |t,d|
  find_by_id("car_car_type_id").text.should =~ /#{t}/
  find_by_id("car_driver_id").text.should =~ /#{d}/
end
