Given /^an index customer companies page with one company$/ do
  Factory.create(:user)
  Factory.create(:customer_company)
  visit signin_form_url
  fill_in 'username', :with => 'user'
  fill_in 'password', :with => 'password'
  click_button 'submit'
  visit customer_companies_path
end

When /^I open customer companie's card and press Delete button$/ do
  click_link 'showCustomer_companyLink'
  click_link 'deleteCustomer_companyLink'
end

Then /^customer company deleted$/ do
  response.should_not have_selector('showCustomer_companyLink')
end
  
