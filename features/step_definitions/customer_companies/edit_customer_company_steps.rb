Given /^a customer company page$/ do
  Factory.create(:user)
  Factory.create(:customer_company)
  Factory.create(:opf2)
  Factory.create(:company_face2)
  visit signin_form_url
  fill_in 'username', :with => 'user'
  fill_in 'password', :with => 'password'
  click_button 'submit'
  visit customer_companies_path
  click_link 'showCustomer_companyLink'
end

When /^I update customer company fields: title to "([^"]*)"$/ do |t|
  click_link "editCustomer_companyLink"
  fill_in "customer_company[title]", :with => t
end

When /^update customer: opf "([^"]*)", deistvuet na osnovanii "([^"]*)", v lice "([^"]*)"$/ do |o,d,l|
  select o, :from => "customer_company[opf_id]"
  select l, :from => "customer_company[company_face_id]"
  fill_in "customer_company[operates_basis]", :with => d
end

When /^update customer: manager name "([^"]*)", legal adress "([^"]*)", actual address "([^"]*)"$/ do |m, l, a|
  fill_in "customer_company[manager_name]", :with => m
  fill_in "customer_company[legal_address]", :with => l
  fill_in "customer_company[actual_address]", :with => a
end

When /^update customer: phone "([^"]*)"$/ do |p|
  fill_in "customer_company[phone]", :with => p
  click_button "customer_company_submit"
end

Then /^customer company  updated with values: title "([^"]*)"$/ do |c|
  visit customer_companies_path
  click_link 'showCustomer_companyLink'
  find_by_id("customer_company_title").value.should =~ /#{c}/
end

Then /^updated customer: opf "([^"]*)", deistvuet na osnovanii "([^"]*)", v lice "([^"]*)"$/ do |o,d,l|
  find_by_id("customer_company_opf_id").text.should =~ /#{o}/
  find_by_id("customer_company_operates_basis").value.should =~ /#{d}/
  find_by_id("customer_company_company_face_id").text.should =~ /#{l}/
end

Then /^updated customer: manager name "([^"]*)", legal adress "([^"]*)", actual address "([^"]*)"$/ do |m,l,a|
  find_by_id("customer_company_manager_name").value.should =~ /#{m}/
  find_by_id("customer_company_legal_address").value.should =~ /#{l}/
  find_by_id("customer_company_actual_address").value.should =~ /#{a}/
end

Then /^updated customer: phone "([^"]*)"$/ do |p|
  find_by_id("customer_company_phone").value.should =~ /#{p}/
end


