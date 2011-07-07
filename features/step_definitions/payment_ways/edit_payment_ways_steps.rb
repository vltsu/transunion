Given /^an payment_way page$/ do
  Factory.create(:admin)
  Factory.create(:payment_way)
  visit signin_form_url
  fill_in 'username', :with => 'admin'
  fill_in 'password', :with => 'password'
  click_button 'submit'
  visit payment_ways_path
  click_link 'showPayment_wayLink'
end

When /^I update payment_way field to "([^"]*)"$/ do |o|
  click_link 'editPayment_wayLink'
  fill_in "payment_way[payment_way]", :with => o
  click_button "payment_way_submit"
end

Then /^Payment_ways updated with value: payment_way "([^"]*)"$/ do |o|
  visit payment_ways_path
  click_link 'showPayment_wayLink'
  find_by_id("payment_way_payment_way").value.should =~ /#{o}/
end
