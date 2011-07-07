Given /^an index payment_methods page with one payment_method$/ do
  Factory.create(:admin)
  Factory.create(:payment_method)
  visit signin_form_url
  fill_in 'username', :with => 'admin'
  fill_in 'password', :with => 'password'
  click_button 'submit'
  visit payment_methods_path
end

When /^I open payment_methods's card and press "Delete" button$/ do
  click_link 'showPayment_methodLink'
  click_link 'deletePayment_methodLink'
end

Then /^Payment_methods deleted$/ do
  response.should_not have_selector('showPayment_methodLink')
end
  
