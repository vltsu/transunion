Given /^an index car_models page with one car_model$/ do
  Factory.create(:admin)
  Factory.create(:car_model)
  visit signin_form_url
  fill_in 'username', :with => 'admin'
  fill_in 'password', :with => 'password'
  click_button 'submit'
  visit car_models_path
end

When /^I open car_model's card and press "Delete" button$/ do
  click_link 'showCar_modelLink'
  click_link 'deleteCar_modelLink'
end

Then /^Car_model deleted$/ do
  response.should_not have_selector('showCar_modelLink')
end
  
