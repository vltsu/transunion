Given /^an index carrier companies page with one company$/ do
  Factory.create(:user)
  Factory.create(:carrier_company)
  visit signin_form_url
  fill_in 'username', :with => 'user'
  fill_in 'password', :with => 'password'
  click_button 'submit'
  visit carrier_companies_path
end

When /^I open carrier companie's card and press Delete button$/ do
  click_link 'showCarrier_companyLink'
  click_link 'deleteCarrier_companyLink'
end

Then /^carrier company deleted$/ do
  response.should_not have_selector('showCarrier_companyLink')
end
  
