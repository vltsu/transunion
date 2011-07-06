When /^I create a company with title "([^"]*)"$/ do |t|
  Factory.create(:opf)
  Factory.create(:opf2)
  Factory.create(:company_face)
  Factory.create(:company_face2)
  click_link 'addCarrier_companyLink'
  fill_in "carrier_company[title]", :with => t
end

When /^opf "([^"]*)", deistvuet na osnovanii "([^"]*)", v lice "([^"]*)"$/ do |o,d,l|
  select o, :from => "carrier_company[opf_id]"
  fill_in "carrier_company[operates_basis]", :with => d
  select l, :from => "carrier_company[company_face_id]"
end

When /^manager name "([^"]*)", legal adress "([^"]*)", actual address "([^"]*)"$/ do |m,l,a|
  fill_in "carrier_company[manager_name]", :with => m
  fill_in "carrier_company[legal_address]", :with => l
  fill_in "carrier_company[actual_address]", :with => a
end

When /^phone "([^"]*)"$/ do |p|
  fill_in "carrier_company[phone]", :with => p
  click_button "carrier_company_submit"
end

Then /^carrier company with title "([^"]*)"$/ do |t|
  visit carrier_companies_path
  click_link 'showCarrier_companyLink'
  find_by_id("carrier_company_title").value.should =~ /#{t}/
end

Then /^Opf "([^"]*)", deistvuet na osnovanii "([^"]*)", v lice "([^"]*)"$/ do |o,d,l|
  find_by_id("carrier_company_opf_id").text.should =~ /#{o}/
  find_by_id("carrier_company_operates_basis").value.should =~ /#{d}/
  find_by_id("carrier_company_company_face_id").text.should =~ /#{l}/
end

Then /^Manager name "([^"]*)", legal adress "([^"]*)", actual address "([^"]*)"$/ do |m,l,a|
  find_by_id("carrier_company_manager_name").value.should =~ /#{m}/
  find_by_id("carrier_company_legal_address").value.should =~ /#{l}/
  find_by_id("carrier_company_actual_address").value.should =~ /#{a}/
end

Then /^Phone "([^"]*)" created$/ do |p|
  find_by_id("carrier_company_phone").value.should =~ /#{p}/
end

Then /^Carrier_company with name "([^"]*)" "([^"]*)" and "([^"]*)" company created$/ do |f,l,c|
  visit carrier_companys_path
  click_link 'showCarrier_companyLink'
  find_by_id("carrier_company_lastname").value.should =~ /#{l}/
  find_by_id("carrier_company_firstname").value.should =~ /#{f}/
  find_by_id("carrier_company_carrier_company_id").text.should =~ /#{c}/
end
