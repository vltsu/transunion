Given /^an index payment_ways page with one payment_way$/ do
  Factory.create(:payment_way)
  visit payment_ways_path
end

When /^I open payment_ways's card and press "Delete" button$/ do
  click_link 'showPayment_wayLink'
  click_link 'deletePayment_wayLink'
end

Then /^Payment_ways deleted$/ do
  response.should_not have_selector('showPayment_wayLink')
end
