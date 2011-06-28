Given /^an index drivers page$/ do
  Factory.create(:user)
  visit signin_form_url
  fill_in 'username', :with => 'user'
  fill_in 'password', :with => 'password'
  click_button 'submit'
  visit drivers_path
end
