Given /^an sign-in page$/ do
end

When /^I enter "([^"]*)" in login field and "([^"]*)" in password field$/ do |login, pass|
  user = Factory.create(:user)
  visit signin_form_url
  fill_in "username", :with => login
  fill_in "password", :with => pass
  click_button 'submit'
end

Then /^I redirected to site index page$/ do
  click_link 'signout'
end
