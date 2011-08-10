Given /^an opf page$/ do
  Factory.create(:opf)
  visit opfs_path
  click_link 'showOpfLink'
end

When /^I update opf field to "([^"]*)"$/ do |o|
  click_link 'editOpfLink'
  fill_in "opf[opf]", :with => o
  click_button "opf_submit"
end

Then /^Opf updated with value: opf "([^"]*)"$/ do |o|
  visit opfs_path
  click_link 'showOpfLink'
  find_by_id("opf_opf").value.should =~ /#{o}/
end
