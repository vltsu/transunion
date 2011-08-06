# encoding: UTF-8
Given /^I logined as manager$/ do
  Factory.create(:member)
  visit (signin_form_path)
  fill_in 'member_email',    :with => 'manager@manager.ru'
  fill_in 'member_password', :with => 'password'
  click_button 'member_submit'
  visit ('/')
  page.should have_content("Выход")
end

Given /^I logined as admin$/ do
  Factory.create(:admin)
  visit signin_form_url
  fill_in 'member_email',    :with => 'admin@admin.ru'
  fill_in 'member_password', :with => 'password'
  click_button 'member_submit'
  visit home_path
  page.should have_content("Выход")
end
