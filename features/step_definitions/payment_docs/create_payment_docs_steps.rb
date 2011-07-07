When /^I create an payment_doc with payment_doc "([^"]*)"$/ do |o|
  click_link 'addPayment_docLink'
  fill_in "payment_doc[payment_doc]", :with => o
  click_button "payment_doc_submit"
end

Then /^PaymentDocs with payment_doc "([^"]*)" created$/ do |o|
  visit payment_docs_path
  click_link 'showPayment_docLink'
  find_by_id("payment_doc_payment_doc").value.should =~ /#{o}/
end
