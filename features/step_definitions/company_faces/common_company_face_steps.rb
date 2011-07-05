Given /^an index company_faces page$/ do
  Factory.create(:admin)
  visit signin_form_url
  fill_in 'username', :with => 'admin'
  fill_in 'password', :with => 'password'
  click_button 'submit'
  visit company_faces_path
end
