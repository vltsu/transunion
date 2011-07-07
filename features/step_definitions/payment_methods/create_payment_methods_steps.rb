When /^I create an payment_method with payment_method "([^"]*)"$/ do |o|
  click_link 'addPayment_methodLink'
  fill_in "payment_method[payment_method]", :with => o
  click_button "payment_method_submit"
end

Then /^PaymentMethods with payment_method "([^"]*)" created$/ do |o|
  visit payment_methods_path
  click_link 'showPayment_methodLink'
  find_by_id("payment_method_payment_method").value.should =~ /#{o}/
end
