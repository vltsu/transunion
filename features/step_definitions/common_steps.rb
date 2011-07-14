# encoding: UTF-8
Given /^I logined as manager$/ do
  Factory.create(:user)
  visit (signin_form_path)
  fill_in 'username', :with => 'user'
  fill_in 'password', :with => 'password'
  click_button 'submit'
  visit ('/')
  page.should have_content("Выход")
end

Given /^I logined as admin$/ do
  Factory.create(:admin)
  visit signin_form_url
  fill_in 'username', :with => 'admin'
  fill_in 'password', :with => 'password'
  click_button 'submit'
  visit home_path
  page.should have_content("Выход")
end
