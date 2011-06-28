Given /^an index drivers page with one driver$/ do
  Factory.create(:user)
  Factory.create(:driver)
  visit signin_form_url
  fill_in 'username', :with => 'user'
  fill_in 'password', :with => 'password'
  click_button 'submit'
  visit drivers_path
end

When /^I open drivers's card and press "Delete" button$/ do
  click_link 'showDriverLink'
  click_link 'deleteDriverLink'
end

Then /^Driver deleted$/ do
  response.should_not have_selector('showDriverLink')
end
  
