Given /^an index company_faces page with one company_face$/ do
  Factory.create(:admin)
  Factory.create(:company_face)
  visit signin_form_url
  fill_in 'username', :with => 'admin'
  fill_in 'password', :with => 'password'
  click_button 'submit'
  visit company_faces_path
end

When /^I open company_faces's card and press "Delete" button$/ do
  click_link 'showCompany_faceLink'
  click_link 'deleteCompany_faceLink'
end

Then /^Company_face deleted$/ do
  response.should_not have_selector('showCompany_faceLink')
end
  
