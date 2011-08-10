# encoding: UTF-8
Given /^an index carrier company page$/ do
  visit carrier_companies_path
  page.should have_content("Открыть")
end
