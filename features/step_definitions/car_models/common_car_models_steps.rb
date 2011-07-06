Given /^an index car_models page$/ do
  Factory.create(:admin)
  visit signin_form_url
  fill_in 'username', :with => 'admin'
  fill_in 'password', :with => 'password'
  click_button 'submit'
  visit car_models_path
end
