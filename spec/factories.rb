Factory.define :carrier_company do |f|
  f.title 'CarrierCompany'
end

Factory.define :driver do |f|
  f.lastname 'Petrov'
  f.firstname 'Ivan'
  f.association :carrier_company, :factory => :carrier_company
end

