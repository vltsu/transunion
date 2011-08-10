Given /^an payment_method page$/ do
  Factory.create(:payment_method)
  visit payment_methods_path
  click_link 'showPayment_methodLink'
end

When /^I update payment_method field to "([^"]*)"$/ do |o|
  click_link 'editPayment_methodLink'
  fill_in "payment_method[payment_method]", :with => o
  click_button "payment_method_submit"
end

Then /^Payment_methods updated with value: payment_method "([^"]*)"$/ do |o|
  visit payment_methods_path
  click_link 'showPayment_methodLink'
  find_by_id("payment_method_payment_method").value.should =~ /#{o}/
end
