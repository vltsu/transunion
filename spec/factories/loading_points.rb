# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :loading_point do |f|
  f.date "2011-07-10"
  f.time "17:00"
  f.contact_person { Factory.next(:lp_contact_person) }
  f.phone          { Factory.next(:lp_phone) }
  f.point_number   { Factory.next(:lp_point_number) }
  f.address        { Factory.next(:lp_address) }
  f.phone_work     { Factory.next(:lp_phone_work) }
  f.shipper        { Factory.next(:lp_shipper) }
end

Factory.sequence :lp_contact_person do |n|
  "loCoPer#{n}"
end

Factory.sequence :lp_phone do |n|
  "loPh#{n}"
end

Factory.sequence :lp_point_number do |n|
  n
end

Factory.sequence :lp_address do |n|
  "loAddress#{n}"
end

Factory.sequence :lp_phone_work do |n|
  "loPhWo#{n}"
end

Factory.sequence :lp_shipper do |n|
  "loShip#{n}"
end
