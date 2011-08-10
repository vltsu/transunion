Given /^an payment_doc page$/ do
  Factory.create(:payment_doc)
  visit payment_docs_path
  click_link 'showPayment_docLink'
end

When /^I update payment_doc field to "([^"]*)"$/ do |o|
  click_link 'editPayment_docLink'
  fill_in "payment_doc[payment_doc]", :with => o
  click_button "payment_doc_submit"
end

Then /^Payment_docs updated with value: payment_doc "([^"]*)"$/ do |o|
  visit payment_docs_path
  click_link 'showPayment_docLink'
  find_by_id("payment_doc_payment_doc").value.should =~ /#{o}/
end
