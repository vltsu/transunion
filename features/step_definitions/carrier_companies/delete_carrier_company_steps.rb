Given /^an index carrier companies page with one company$/ do
  Factory.create(:carrier_company)
  visit carrier_companies_path
end

When /^I open carrier companie's card and press Delete button$/ do
  click_link 'showCarrier_companyLink'
  click_link 'deleteCarrier_companyLink'
end

Then /^carrier company deleted$/ do
  response.should_not have_selector('showCarrier_companyLink')
end
