Feature: Manage Requests
  In order to add request functionality
  As an manager and admin
  I want to create and manage requests

  @javascript
  Scenario: Create Valid Request
    Given I logined as manager
    And I am on the list of requests
    And I have all required fixtures up
    When I follow "addRequestLink"
    When I choose "request_type_contract_request"
    And I select "Продукты" from "request_cargo_classification_id"
    And I fill in "request_item" with "Макароны"
    And I fill in "request_volume" with "80"
    And I fill in "request_weight" with "5"
    And I fill in "request_temperature" with "от 5 до 10"
    And I fill in "length" with "1,8"
    And I fill in "width" with "2,8"
    And I fill in "height" with "3,8"
    And I fill in "request_evropallet" with "5"
    And I fill in "request_belts_count" with "4"
    And I fill in "request_crate_body" with "3"
    And I fill in "request_other_conditions" with "разгружать осторожно"
    And I check "request_loading_up"
    And I check "request_loading_side"
    And I select "CustomerCompany2" from "request_customer_company_id"
    And I select "CarrierCompany2" from "request_carrier_company_id"
    And I select "Иванов Семен Петрович" from "request_driver_id"
    And I select "Mercedes Рефрижератор 15.0" from "request_car_id"
    And I fill in "request_loading_point1_date" with "2011-12-04"
    And I fill in "request_loading_point1_time" with "18:00"
    And I fill in "request_loading_point1_address" with "Москва, ул. Дружная"
    And I fill in "request_loading_point1_shipper" with "ООО Флот"
    And I fill in "request_loading_point1_contact_person" with "Петр Васильков"
    And I fill in "request_loading_point1_phone" with "1113"
    And I fill in "request_loading_point1_phone_work" with "1112"
    And I fill in "request_unloading_point1_date" with "2011-12-05"
    And I fill in "request_unloading_point1_time" with "19:00"
    And I fill in "request_unloading_point1_address" with "Питер, ул. Дружная"
    And I fill in "request_unloading_point1_consignee" with "ООО Макфа"
    And I fill in "request_unloading_point1_contact_person" with "Влад Петров"
    And I fill in "request_unloading_point1_phone" with "2223"
    And I fill in "request_unloading_point1_phone_work" with "3333"
