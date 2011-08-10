# encoding: UTF-8
Given /^an index customer company page$/ do
  visit customer_companies_path
  page.should have_content("Открыть")
end
