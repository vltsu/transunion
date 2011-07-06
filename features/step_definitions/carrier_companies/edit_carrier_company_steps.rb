Given /^a carrier company page$/ do
  Factory.create(:user)
  Factory.create(:carrier_company)
  Factory.create(:opf2)
  Factory.create(:company_face2)
  visit signin_form_url
  fill_in 'username', :with => 'user'
  fill_in 'password', :with => 'password'
  click_button 'submit'
  visit carrier_companies_path
  click_link 'showCarrier_companyLink'
end

When /^I update carrier company fields: title to "([^"]*)"$/ do |t|
  click_link "editCarrier_companyLink"
  fill_in "carrier_company[title]", :with => t
end

When /^update: opf "([^"]*)", deistvuet na osnovanii "([^"]*)", v lice "([^"]*)"$/ do |o,d,l|
  select o, :from => "carrier_company[opf_id]"
  select l, :from => "carrier_company[company_face_id]"
  fill_in "carrier_company[operates_basis]", :with => d
end

When /^update: manager name "([^"]*)", legal adress "([^"]*)", actual address "([^"]*)"$/ do |m, l, a|
  fill_in "carrier_company[manager_name]", :with => m
  fill_in "carrier_company[legal_address]", :with => l
  fill_in "carrier_company[actual_address]", :with => a
end

When /^update: phone "([^"]*)"$/ do |p|
  fill_in "carrier_company[phone]", :with => p
  click_button "carrier_company_submit"
end

Then /^carrier company  updated with values: title "([^"]*)"$/ do |c|
  visit carrier_companies_path
  click_link 'showCarrier_companyLink'
  find_by_id("carrier_company_title").value.should =~ /#{c}/
end

Then /^updated: opf "([^"]*)", deistvuet na osnovanii "([^"]*)", v lice "([^"]*)"$/ do |o,d,l|
  find_by_id("carrier_company_opf_id").text.should =~ /#{o}/
  find_by_id("carrier_company_operates_basis").value.should =~ /#{d}/
  find_by_id("carrier_company_company_face_id").text.should =~ /#{l}/
end

Then /^updated: manager name "([^"]*)", legal adress "([^"]*)", actual address "([^"]*)"$/ do |m,l,a|
  find_by_id("carrier_company_manager_name").value.should =~ /#{m}/
  find_by_id("carrier_company_legal_address").value.should =~ /#{l}/
  find_by_id("carrier_company_actual_address").value.should =~ /#{a}/
end

Then /^updated: phone "([^"]*)"$/ do |p|
  find_by_id("carrier_company_phone").value.should =~ /#{p}/
end


