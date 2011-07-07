Given /^an cargo_classification page$/ do
  Factory.create(:admin)
  Factory.create(:cargo_classification)
  visit signin_form_url
  fill_in 'username', :with => 'admin'
  fill_in 'password', :with => 'password'
  click_button 'submit'
  visit cargo_classifications_path
  click_link 'showCargo_classificationLink'
end

When /^I update cargo_classification field to "([^"]*)"$/ do |o|
  click_link 'editCargo_classificationLink'
  fill_in "cargo_classification[classification]", :with => o
  click_button "cargo_classification_submit"
end

Then /^Cargo_classification updated with value: cargo_classification "([^"]*)"$/ do |o|
  visit cargo_classifications_path
  click_link 'showCargo_classificationLink'
  find_by_id("cargo_classification_classification").value.should =~ /#{o}/
end
