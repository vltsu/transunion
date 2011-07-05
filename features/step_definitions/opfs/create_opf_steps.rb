When /^I create an opf with opf "([^"]*)"$/ do |o|
  click_link 'addOpfLink'
  fill_in "opf[opf]", :with => o
  click_button "opf_submit"
end

Then /^OPF with opf "([^"]*)" created$/ do |o|
  visit opfs_path
  click_link 'showOpfLink'
  find_by_id("opf_opf").value.should =~ /#{o}/
end
