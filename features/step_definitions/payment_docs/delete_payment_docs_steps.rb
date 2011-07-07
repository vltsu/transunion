Given /^an index payment_docs page with one payment_doc$/ do
  Factory.create(:admin)
  Factory.create(:payment_doc)
  visit signin_form_url
  fill_in 'username', :with => 'admin'
  fill_in 'password', :with => 'password'
  click_button 'submit'
  visit payment_docs_path
end

When /^I open payment_docs's card and press "Delete" button$/ do
  click_link 'showPayment_docLink'
  click_link 'deletePayment_docLink'
end

Then /^Payment_docs deleted$/ do
  response.should_not have_selector('showPayment_docLink')
end
  
