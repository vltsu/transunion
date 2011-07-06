Given /^a car page$/ do
  Factory.create(:user)
  Factory.create(:car)
  Factory.create(:driver)
  Factory.create(:driver2)
  Factory.create(:car_type)
  Factory.create(:car_type2)
  Factory.create(:car_model)
  Factory.create(:car_model2)
  Factory.create(:car_tonnage)
  Factory.create(:car_tonnage2)
  visit signin_form_url
  fill_in 'username', :with => 'user'
  fill_in 'password', :with => 'password'
  click_button 'submit'
  visit cars_path
  click_link 'showCarLink'
end

When /^I update car fields: type "([^"]*)", driver "([^"]*)"$/ do |t,d|
  click_link "editCarLink"
  select t, :from => "car[car_type_id]"
  select d, :from => "car[driver_id]"
end

When /^update car: model "([^"]*)", tonnage "([^"]*)"$/ do |m,t|
  select m, :from => "car[car_model_id]"
  select t, :from => "car[car_tonnage_id]"
  click_button "car_submit"
end

Then /^car updated with values: type "([^"]*)", driver "([^"]*)"$/ do |t,d|
  visit cars_path
  click_link 'showCarLink'
  find_by_id("car_car_type_id").text.should =~ /#{t}/
  find_by_id("car_driver_id").text.should =~ /#{d}/
end

Then /^updated with: model "([^"]*)", tonnage "([^"]*)"$/ do |m,t|
  find_by_id("car_car_model_id").text.should =~ /#{m}/
  find_by_id("car_car_tonnage_id").text.should =~ /#{t}/
end

