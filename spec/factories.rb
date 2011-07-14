# encoding: UTF-8
Factory.define :carrier_company do |f|
  f.title { Factory.next(:carrier_company_title) }
  f.association :opf, :factory => :opf
  f.association :company_face, :factory => :company_face
  f.manager_name 'Ivan Petrov'
  f.operates_basis 'Ustava'
  f.legal_address 'Moscow, 5'
  f.actual_address 'Magadan, 8'
  f.phone '12345'
  f.respons_refuse_loading_day '11.11'
  f.respons_idle_excessively_hours '11.11'
  f.respons_idle_excessively_percent '11.11'
  f.respons_payment_late '11.11'

  f.respons_undeliver_transport_loading '11.11'
  f.respons_transport_late_loading_hours '11.11'
  f.respons_transport_late_loading_percent '11.11'
  f.respons_transport_late_destination_hours '11.11'
  f.response_transport_late_destination_percent '11.11'
  f.respons_document_late '11.11'
end

Factory.sequence :carrier_company_title do |n|
  "CarrierCompany#{n}"
end

Factory.define :customer_company do |f|
  f.title { Factory.next(:customer_company_title) }
  f.association :opf, :factory => :opf
  f.association :company_face, :factory => :company_face
  f.manager_name 'Ivan Petrov'
  f.operates_basis 'Ustava'
  f.legal_address 'Moscow, 5'
  f.actual_address 'Magadan, 8'
  f.phone '12345'
  f.respons_refuse_loading_day '11.11'
  f.respons_idle_excessively_hours '11.11'
  f.respons_idle_excessively_percent '11.11'
  f.respons_payment_late '11.11'

  f.respons_undeliver_transport_loading '11.11'
  f.respons_transport_late_loading_hours '11.11'
  f.respons_transport_late_loading_percent '11.11'
  f.respons_transport_late_destination_hours '11.11'
  f.response_transport_late_destination_percent '11.11'
  f.respons_document_late '11.11'
end

Factory.sequence :customer_company_title do |n|
  "CustomerCompany#{n}"
end

Factory.define :driver do |f|
  f.lastname 'Кузьменко'
  f.firstname 'Иван'
  f.middlename 'Спиридонович'
  f.association :carrier_company, :factory => :carrier_company
end

Factory.define :driver2, :class => Driver do |f|
  f.lastname 'Иванов'
  f.firstname 'Семен'
  f.middlename 'Петрович'
  f.association :carrier_company, :factory => :carrier_company
end

Factory.define :user do |f|
  f.login    'user'
  f.password 'password'
  f.role     'manager'
end

Factory.define :admin, :class => User do |u|
  u.login     'admin'
  u.password  'password'
  u.role      'administrator'
end

Factory.define :opf do |f|
  f.opf    'ZAO'
end

Factory.define :opf2, :class => Opf do |f|
  f.opf    'OOO'
end

Factory.define :company_face do |f|
  f.company_face 'General Director'
end

Factory.define :company_face2, :class => CompanyFace do |f|
  f.company_face 'CIO'
end

Factory.define :car_type do |f|
  f.car_type 'Тент'
end

Factory.define :car_type2, :class => CarType do |f|
  f.car_type 'Рефрижератор'
end

Factory.define :car_model do |f|
  f.car_model 'Man'
end

Factory.define :car_model2, :class => CarModel do |f|
  f.car_model 'Mercedes'
end

Factory.define :car_tonnage do |f|
  f.car_tonnage '11.5'
end

Factory.define :car_tonnage2, :class => CarTonnage do |f|
  f.car_tonnage '15'
end

Factory.define :car do |f|
  f.association :car_type, :factory => :car_type
  f.association :car_model, :factory => :car_model
  f.association :driver, :factory => :driver
  f.association :car_tonnage, :factory => :car_tonnage
end

Factory.define :car2, :class => Car do |f|
  f.association :car_type, :factory => :car_type2
  f.association :car_model, :factory => :car_model2
  f.association :driver, :factory => :driver2
  f.association :car_tonnage, :factory => :car_tonnage2
end

Factory.define :cargo_classification do |f|
  f.classification 'Продукты'
end

Factory.define :cargo_classification2, :class => CargoClassification do |f|
  f.classification 'Металлопродукция'
end

Factory.define :payment_method do |f|
  f.payment_method 'Безнал'
end

Factory.define :payment_method2, :class => PaymentMethod do |f|
  f.payment_method 'Нал'
end

Factory.define :payment_way do |f|
  f.payment_way 'На руки'
end

Factory.define :payment_way2, :class => PaymentWay do |f|
  f.payment_way 'На карту'
end

Factory.define :payment_doc do |f|
  f.payment_doc 'По оригиналам'
end

Factory.define :payment_doc2, :class => PaymentDoc do |f|
  f.payment_doc 'По копиям'
end
