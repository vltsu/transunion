Given /^a company_face page$/ do
  Factory.create(:admin)
  Factory.create(:company_face)
  visit signin_form_url
  fill_in 'username', :with => 'admin'
  fill_in 'password', :with => 'password'
  click_button 'submit'
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
