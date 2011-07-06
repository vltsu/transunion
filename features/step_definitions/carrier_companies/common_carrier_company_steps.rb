# encoding: UTF-8
Given /^an index carrier company page$/ do
  Factory.create(:user)
  visit signin_form_url
  fill_in 'username', :with => 'user'
  fill_in 'password', :with => 'password'
  click_button 'submit'
  visit carrier_companies_path
  page.should have_content("Открыть")
end
