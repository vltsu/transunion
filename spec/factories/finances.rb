# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :finance do |f|
  f.glob_type "MyString"
  f.local_type "MyString"
  f.date "2011-07-26 13:41:05"
  f.summ "9.99"
  f.description "MyText"
  f.request_id 1
  f.bill_id 1
  f.income_section_id 1
  f.expenditure_id 1
  f.payment_way "MyString"
  f.salary_person_id 1
  f.edit_date "2011-07-26 13:41:05"
  f.carrier_beznal_way "MyString"
end