# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :unloading_point do |f|
  f.date "2011-07-10"
  f.time "17:00"
  f.contact_person { Factory.next(:up_contact_person) }
  f.phone          { Factory.next(:up_phone) }
  f.point_number   { Factory.next(:up_point_number) }
  f.address        { Factory.next(:up_address) }
  f.phone_work     { Factory.next(:up_phone_work) }
  f.consignee      { Factory.next(:up_consignee) }
end

Factory.sequence :up_contact_person do |n|
  "uloCoPer#{n}"
end

Factory.sequence :up_phone do |n|
  "uloPh#{n}"
end

Factory.sequence :up_point_number do |n|
  n
end

Factory.sequence :up_address do |n|
  "uloAddress#{n}"
end

Factory.sequence :up_phone_work do |n|
  "uloPhWo#{n}"
end

Factory.sequence :up_consignee do |n|
  "uloCons#{n}"
end
