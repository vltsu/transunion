Given /^an index drivers page with one driver$/ do
  Factory.create(:driver)
  visit drivers_path
end

When /^I open drivers's card and press "Delete" button$/ do
  click_link 'showDriverLink'
  click_link 'deleteDriverLink'
end

Then /^Driver deleted$/ do
  response.should_not have_selector('showDriverLink')
end
