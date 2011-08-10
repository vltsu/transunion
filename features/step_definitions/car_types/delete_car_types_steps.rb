Given /^an index car_types page with one car_type$/ do
  Factory.create(:car_type)
  visit car_types_path
end

When /^I open car_type's card and press "Delete" button$/ do
  click_link 'showCar_typeLink'
  click_link 'deleteCar_typeLink'
end

Then /^Car_type deleted$/ do
  response.should_not have_selector('showCar_typeLink')
end
