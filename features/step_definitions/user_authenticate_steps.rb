Given /^an sign-in page$/ do
end

When /^I enter "([^"]*)" in login field and "([^"]*)" in password field$/ do |login, pass|
  user = Factory.create(:admin)
  visit signin_form_url
  fill_in "member_email", :with => login
  fill_in "member_password", :with => pass
  click_button 'member_submit'
end

Then /^I redirected to site index page$/ do
  click_link 'signout'
end
