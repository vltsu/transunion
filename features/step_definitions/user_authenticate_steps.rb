Given /^an sign-in page$/ do
end

When /^I enter "([^"]*)" in login field and "([^"]*)" in password field $/ do |login, pass|
  person  = Factory.create(:person)
  visit sign_in_page
  fill_in "person[login]", :with => #{login}
  fill_in "person[pass]", :with => #{pass}
  click_button "person_submit"
end

Then /^I redirected to site index page$/ do
  find_by_id("person_lastname").value.should =~ /TestLastname/
end
