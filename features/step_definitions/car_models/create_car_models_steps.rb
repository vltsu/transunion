When /^I create an car_model with car_model "([^"]*)"$/ do |o|
  click_link 'addCar_modelLink'
  fill_in "car_model[car_model]", :with => o
  click_button "car_model_submit"
end

Then /^Car_model with car_model "([^"]*)" created$/ do |o|
  visit car_models_path
  click_link 'showCar_modelLink'
  find_by_id("car_model_car_model").value.should =~ /#{o}/
end
