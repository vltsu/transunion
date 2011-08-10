Given /^an index cargo_classifications page with one cargo_classification$/ do
  Factory.create(:cargo_classification)
  visit cargo_classifications_path
end

When /^I open cargo_classifications's card and press "Delete" button$/ do
  click_link 'showCargo_classificationLink'
  click_link 'deleteCargo_classificationLink'
end

Then /^Cargo_classification deleted$/ do
  response.should_not have_selector('showCargo_classificationLink')
end
