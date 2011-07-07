When /^I create an cargo_classification with cargo_classification "([^"]*)"$/ do |o|
  click_link 'addCargo_classificationLink'
  fill_in "cargo_classification[classification]", :with => o
  click_button "cargo_classification_submit"
end

Then /^CargoClassification with cargo_classification "([^"]*)" created$/ do |o|
  visit cargo_classifications_path
  click_link 'showCargo_classificationLink'
  find_by_id("cargo_classification_classification").value.should =~ /#{o}/
end
