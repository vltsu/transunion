Given /^an index car_tonnages page with one car_tonnage$/ do
  Factory.create(:admin)
  Factory.create(:car_tonnage)
  visit signin_form_url
  fill_in 'username', :with => 'admin'
  fill_in 'password', :with => 'password'
  click_button 'submit'
  visit car_tonnages_path
end

When /^I open car_tonnage's card and press "Delete" button$/ do
  click_link 'showCar_tonnageLink'
  click_link 'deleteCar_tonnageLink'
end

Then /^Car_tonnage deleted$/ do
  response.should_not have_selector('showCar_tonnageLink')
end
  
