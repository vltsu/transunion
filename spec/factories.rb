Factory.define :carrier_company do |f|
  f.title { Factory.next(:carrier_company_title) }
end

Factory.sequence :carrier_company_title do |n|
  "CarrierCompany#{n}"
end

Factory.define :driver do |f|
  f.lastname 'Petrov'
  f.firstname 'Ivan'
  f.middlename 'Ivanovich'
  f.association :carrier_company, :factory => :carrier_company
end

Factory.define :user do |f|
  f.login    'user'
  f.password 'password'
  f.role     'manager'
end
