When /^I create a customer company with title "([^"]*)"$/ do |t|
  Factory.create(:opf)
  Factory.create(:opf2)
  Factory.create(:company_face)
  Factory.create(:company_face2)
  click_link 'addCustomer_companyLink'
  fill_in "customer_company[title]", :with => t
end

When /^customer: opf "([^"]*)", deistvuet na osnovanii "([^"]*)", v lice "([^"]*)"$/ do |o,d,l|
  select o, :from => "customer_company[opf_id]"
  fill_in "customer_company[operates_basis]", :with => d
  select l, :from => "customer_company[company_face_id]"
end

When /^customer: manager name "([^"]*)", legal adress "([^"]*)", actual address "([^"]*)"$/ do |m,l,a|
  fill_in "customer_company[manager_name]", :with => m
  fill_in "customer_company[legal_address]", :with => l
  fill_in "customer_company[actual_address]", :with => a
end

When /^customer: phone "([^"]*)"$/ do |p|
  fill_in "customer_company[phone]", :with => p
  click_button "customer_company_submit"
end

Then /^customer company with title "([^"]*)"$/ do |t|
  visit customer_companies_path
  click_link 'showCustomer_companyLink'
  find_by_id("customer_company_title").value.should =~ /#{t}/
end

Then /^customer: Opf "([^"]*)", deistvuet na osnovanii "([^"]*)", v lice "([^"]*)"$/ do |o,d,l|
  find_by_id("customer_company_opf_id").text.should =~ /#{o}/
  find_by_id("customer_company_operates_basis").value.should =~ /#{d}/
  find_by_id("customer_company_company_face_id").text.should =~ /#{l}/
end

Then /^customer: Manager name "([^"]*)", legal adress "([^"]*)", actual address "([^"]*)"$/ do |m,l,a|
  find_by_id("customer_company_manager_name").value.should =~ /#{m}/
  find_by_id("customer_company_legal_address").value.should =~ /#{l}/
  find_by_id("customer_company_actual_address").value.should =~ /#{a}/
end

Then /^customer: Phone "([^"]*)" created$/ do |p|
  find_by_id("customer_company_phone").value.should =~ /#{p}/
end

Then /^Customer_company with name "([^"]*)" "([^"]*)" and "([^"]*)" company created$/ do |f,l,c|
  visit customer_companys_path
  click_link 'showCustomer_companyLink'
  find_by_id("customer_company_lastname").value.should =~ /#{l}/
  find_by_id("customer_company_firstname").value.should =~ /#{f}/
  find_by_id("customer_company_customer_company_id").text.should =~ /#{c}/
end
