Given /^a company_face page$/ do
  Factory.create(:company_face)
  visit company_faces_path
  click_link 'showCompany_faceLink'
end

When /^I update company_face field to "([^"]*)"$/ do |o|
  click_link 'editCompany_faceLink'
  fill_in "company_face[company_face]", :with => o
  click_button "company_face_submit"
end

Then /^Company_face updated with value: company_face "([^"]*)"$/ do |o|
  visit company_faces_path
  click_link 'showCompany_faceLink'
  find_by_id("company_face_company_face").value.should =~ /#{o}/
end
