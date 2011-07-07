Given /^an index payment_docs page$/ do
  Factory.create(:admin)
  visit signin_form_url
  fill_in 'username', :with => 'admin'
  fill_in 'password', :with => 'password'
  click_button 'submit'
  visit payment_docs_path
end
