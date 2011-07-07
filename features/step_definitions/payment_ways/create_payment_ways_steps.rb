When /^I create an payment_way with payment_way "([^"]*)"$/ do |o|
  click_link 'addPayment_wayLink'
  fill_in "payment_way[payment_way]", :with => o
  click_button "payment_way_submit"
end

Then /^PaymentWays with payment_way "([^"]*)" created$/ do |o|
  visit payment_ways_path
  click_link 'showPayment_wayLink'
  find_by_id("payment_way_payment_way").value.should =~ /#{o}/
end
