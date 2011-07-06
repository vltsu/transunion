Given /^an car_model page$/ do
  Factory.create(:admin)
  Factory.create(:car_model)
  visit signin_form_url
  fill_in 'username', :with => 'admin'
  fill_in 'password', :with => 'password'
  click_button 'submit'
  visit car_models_path
  click_link 'showCar_modelLink'
end

When /^I update car_model field to "([^"]*)"$/ do |o|
  click_link 'editCar_modelLink'
  fill_in "car_model[car_model]", :with => o
  click_button "car_model_submit"
end

Then /^Car_model updated with value: car_model "([^"]*)"$/ do |o|
  visit car_models_path
  click_link 'showCar_modelLink'
  find_by_id("car_model_car_model").value.should =~ /#{o}/
end
