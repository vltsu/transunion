When /^I create a company_face with company_face "([^"]*)"$/ do |o|
  click_link 'addCompany_faceLink'
  fill_in "company_face[company_face]", :with => o
  click_button "company_face_submit"
end

Then /^OPF with company_face "([^"]*)" created$/ do |o|
  visit company_faces_path
  click_link 'showCompany_faceLink'
  find_by_id("company_face_company_face").value.should =~ /#{o}/
end
