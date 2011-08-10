Given /^an index opfs page with one opf$/ do
  Factory.create(:opf)
  visit opfs_path
end

When /^I open opfs's card and press "Delete" button$/ do
  click_link 'showOpfLink'
  click_link 'deleteOpfLink'
end

Then /^Opf deleted$/ do
  response.should_not have_selector('showOpfLink')
end
