And /^I have all required fixtures up$/ do
  Factory.create(:cargo_classification)
  Factory.create(:cargo_classification2)
  Factory.create(:customer_company)
  Factory.create(:customer_company)
  Factory.create(:carrier_company)
  Factory.create(:carrier_company)
  Factory.create(:driver)
  Factory.create(:driver2)
  Factory.create(:car)
  Factory.create(:car2)

end
