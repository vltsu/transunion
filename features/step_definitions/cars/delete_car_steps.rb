Given /^an index cars page with one car$/ do
  Factory.create(:user)
  Factory.create(:car)
  visit signin_form_url
  fill_in 'username', :with => 'user'
  fill_in 'password', :with => 'password'
  click_button 'submit'
  visit cars_path
end

When /^I open car's card and press Delete button$/ do
  click_link 'showCarLink'
  click_link 'deleteCarLink'
end

Then /^car deleted$/ do
  response.should_not have_selector('showCarLink')
end
  
