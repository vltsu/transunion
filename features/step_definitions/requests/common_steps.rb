And /^I have all required fixtures up$/ do
  Factory.create(:cargo_classification)
  Factory.create(:cargo_classification2)
  Factory.create(:customer_company)
  Factory.create(:customer_company)
  Factory.create(:carrier_company)
  Factory.create(:car)
  Factory.create(:car2)
  Factory.create(:payment_method)
  Factory.create(:payment_method2)
  Factory.create(:payment_way)
  Factory.create(:payment_way2)
  Factory.create(:payment_doc)
  Factory.create(:payment_doc2)
end

And /^I have one filled request$/ do
  Factory.create(:request)
  Factory.create(:car2)
  Factory.create(:cargo_classification2)
  Factory.create(:customer_company)
  Factory.create(:payment_method)
  Factory.create(:payment_method2)
  Factory.create(:payment_way)
  Factory.create(:payment_way2)
  Factory.create(:payment_doc)
  Factory.create(:payment_doc2)
  Factory.create(:driver2)
end
