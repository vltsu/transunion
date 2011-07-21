Feature: Manage Requests
  In order to add request functionality
  As an manager and admin
  I want to create and manage requests

  @javascript
  Scenario: Create Valid Request and check result
    Given I logined as manager
    And I am on the list of requests
    And I have all required fixtures up
    When I follow "addRequestLink"
    When I choose "request_request_type_contract_request"
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

    And I disable dateTimeEntry 1
    And I fill in "loadingDate1" with "2011-12-04"
    And I fill in "request_loading_point1_time" with "18:00"
    And I fill in "request_loading_point1_address" with "la1"
    And I fill in "request_loading_point1_shipper" with "ls1"
    And I fill in "request_loading_point1_contact_person" with "lcp1"
    And I fill in "request_loading_point1_phone" with "lph1"
    And I fill in "request_loading_point1_phone_work" with "lpw1"
    And I fill in "unloadingDate1" with "2011-12-05"
    And I fill in "request_unloading_point1_time" with "19:00"
    And I fill in "request_unloading_point1_address" with "ua1"
    And I fill in "request_unloading_point1_consignee" with "uc1"
    And I fill in "request_unloading_point1_contact_person" with "ucp1"
    And I fill in "request_unloading_point1_phone" with "uph1"
    And I fill in "request_unloading_point1_phone_work" with "upw1"

    And I click to "#loadingButton p"
    And I click to "#unloadingButton p"
    And I disable dateTimeEntry 2
    And I fill in "loadingDate2" with "2011-12-04"
    And I fill in "request[loading_point2][time]" with "18:00"
    And I fill in "loadingAddress2" with "la2"
    And I fill in "shipper2" with "ls2"
    And I fill in "loadingContactPerson2" with "lcp2"
    And I fill in "loadingContactPhone2" with "lph2"
    And I fill in "loadingContactPhoneWork2" with "lpw2"
    And I fill in "unloadingDate2" with "2011-12-05"
    And I fill in "request[unloading_point2][time]" with "19:00"
    And I fill in "unloadingAddress2" with "ua2"
    And I fill in "consignee2" with "uc2"
    And I fill in "unloadingContactPerson2" with "ucp2"
    And I fill in "unloadingContactPhone2" with "uph2"
    And I fill in "unloadingContactPhoneWork2" with "upw2"

    And I click to "#loadingButton p"
    And I click to "#unloadingButton p"
    And I disable dateTimeEntry 3
    And I fill in "loadingDate3" with "2011-12-04"
    And I fill in "request[loading_point3][time]" with "18:00"
    And I fill in "loadingAddress3" with "la3"
    And I fill in "shipper3" with "ls3"
    And I fill in "loadingContactPerson3" with "lcp3"
    And I fill in "loadingContactPhone3" with "lph3"
    And I fill in "loadingContactPhoneWork3" with "lpw3"
    And I fill in "unloadingDate3" with "2011-12-05"
    And I fill in "request[unloading_point3][time]" with "19:00"
    And I fill in "unloadingAddress3" with "ua3"
    And I fill in "consignee3" with "uc3"
    And I fill in "unloadingContactPerson3" with "ucp3"
    And I fill in "unloadingContactPhone3" with "uph3"
    And I fill in "unloadingContactPhoneWork3" with "upw3"

    And I click to "#loadingButton p"
    And I click to "#unloadingButton p"
    And I disable dateTimeEntry 4
    And I fill in "loadingDate4" with "2011-12-04"
    And I fill in "request[loading_point4][time]" with "18:00"
    And I fill in "loadingAddress4" with "la4"
    And I fill in "shipper4" with "ls4"
    And I fill in "loadingContactPerson4" with "lcp4"
    And I fill in "loadingContactPhone4" with "lph4"
    And I fill in "loadingContactPhoneWork4" with "lpw4"
    And I fill in "unloadingDate4" with "2011-12-05"
    And I fill in "request[unloading_point4][time]" with "19:00"
    And I fill in "unloadingAddress4" with "ua4"
    And I fill in "consignee4" with "uc4"
    And I fill in "unloadingContactPerson4" with "ucp4"
    And I fill in "unloadingContactPhone4" with "uph4"
    And I fill in "unloadingContactPhoneWork4" with "upw4"

    And I click to "#loadingButton p"
    And I click to "#unloadingButton p"
    And I disable dateTimeEntry 5
    And I fill in "loadingDate5" with "2011-12-04"
    And I fill in "request[loading_point5][time]" with "18:00"
    And I fill in "loadingAddress5" with "la5"
    And I fill in "shipper5" with "ls5"
    And I fill in "loadingContactPerson5" with "lcp5"
    And I fill in "loadingContactPhone5" with "lph5"
    And I fill in "loadingContactPhoneWork5" with "lpw5"
    And I fill in "unloadingDate5" with "2011-12-05"
    And I fill in "request[unloading_point5][time]" with "19:00"
    And I fill in "unloadingAddress5" with "ua5"
    And I fill in "consignee5" with "uc5"
    And I fill in "unloadingContactPerson5" with "ucp5"
    And I fill in "unloadingContactPhone5" with "uph5"
    And I fill in "unloadingContactPhoneWork5" with "upw5"

    And I click to "#loadingButton p"
    And I click to "#unloadingButton p"
    And I disable dateTimeEntry 6
    And I fill in "loadingDate6" with "2011-12-04"
    And I fill in "request[loading_point6][time]" with "18:00"
    And I fill in "loadingAddress6" with "la6"
    And I fill in "shipper6" with "ls6"
    And I fill in "loadingContactPerson6" with "lcp6"
    And I fill in "loadingContactPhone6" with "lph6"
    And I fill in "loadingContactPhoneWork6" with "lpw6"
    And I fill in "unloadingDate6" with "2011-12-05"
    And I fill in "request[unloading_point6][time]" with "19:00"
    And I fill in "unloadingAddress6" with "ua6"
    And I fill in "consignee6" with "uc6"
    And I fill in "unloadingContactPerson6" with "ucp6"
    And I fill in "unloadingContactPhone6" with "uph6"
    And I fill in "unloadingContactPhoneWork6" with "upw6"

    And I click to "#loadingButton p"
    And I click to "#unloadingButton p"
    And I disable dateTimeEntry 7
    And I fill in "loadingDate7" with "2011-12-04"
    And I fill in "request[loading_point7][time]" with "18:00"
    And I fill in "loadingAddress7" with "la7"
    And I fill in "shipper7" with "ls7"
    And I fill in "loadingContactPerson7" with "lcp7"
    And I fill in "loadingContactPhone7" with "lph7"
    And I fill in "loadingContactPhoneWork7" with "lpw7"
    And I fill in "unloadingDate7" with "2011-12-05"
    And I fill in "request[unloading_point7][time]" with "19:00"
    And I fill in "unloadingAddress7" with "ua7"
    And I fill in "consignee7" with "uc7"
    And I fill in "unloadingContactPerson7" with "ucp7"
    And I fill in "unloadingContactPhone7" with "uph7"
    And I fill in "unloadingContactPhoneWork7" with "upw7"

    And I click to "#loadingButton p"
    And I click to "#unloadingButton p"
    And I disable dateTimeEntry 8
    And I fill in "loadingDate8" with "2011-12-04"
    And I fill in "request[loading_point8][time]" with "18:00"
    And I fill in "loadingAddress8" with "la8"
    And I fill in "shipper8" with "ls8"
    And I fill in "loadingContactPerson8" with "lcp8"
    And I fill in "loadingContactPhone8" with "lph8"
    And I fill in "loadingContactPhoneWork8" with "lpw8"
    And I fill in "unloadingDate8" with "2011-12-05"
    And I fill in "request[unloading_point8][time]" with "19:00"
    And I fill in "unloadingAddress8" with "ua8"
    And I fill in "consignee8" with "uc8"
    And I fill in "unloadingContactPerson8" with "ucp8"
    And I fill in "unloadingContactPhone8" with "uph8"
    And I fill in "unloadingContactPhoneWork8" with "upw8"

    And I click to "#loadingButton p"
    And I click to "#unloadingButton p"
    And I disable dateTimeEntry 9
    And I fill in "loadingDate9" with "2011-12-04"
    And I fill in "request[loading_point9][time]" with "18:00"
    And I fill in "loadingAddress9" with "la9"
    And I fill in "shipper9" with "ls9"
    And I fill in "loadingContactPerson9" with "lcp9"
    And I fill in "loadingContactPhone9" with "lph9"
    And I fill in "loadingContactPhoneWork9" with "lpw9"
    And I fill in "unloadingDate9" with "2011-12-05"
    And I fill in "request[unloading_point9][time]" with "19:00"
    And I fill in "unloadingAddress9" with "ua9"
    And I fill in "consignee9" with "uc9"
    And I fill in "unloadingContactPerson9" with "ucp9"
    And I fill in "unloadingContactPhone9" with "uph9"
    And I fill in "unloadingContactPhoneWork9" with "upw9"

    And I click to ".customerPayMethodButton"
    And I fill in "customerRateHours" with "5"
    And I fill in "customerRatePodachaHours" with "2"
    And I fill in "customerRateHourPrice" with "500,55"
    And I fill in "customerRateSverhPrice" with "700,77"
    And I fill in "carrierRateSumm" with "15000,15"
    And I fill in "carrierRateSverhPrice" with "700,22"

    And I fill in "customerDopPrabPrice" with "10,50"
    And I fill in "customerDopDopTochkaPogrPrice" with "11,50"
    And I fill in "customerDopDopTochkaRazgrPrice" with "12,50"
    And I fill in "customerDopRastentovkaPrice" with "13,50"
    And I fill in "customerDopPeregPrice" with "14,50"
    And I fill in "customerDopNightStayPrice" with "15,50"
    And I fill in "customerDopMezgorodPrice" with "16,50"
    And I fill in "customerDopSoprovPrice" with "17,50"
    And I fill in "customerDopVozvrPrice" with "18,50"
    And I fill in "customerDopNegabaritPrice" with "19,50"
    And I fill in "customerDopGruzchPrice" with "20,50"
    And I fill in "carrierDopPrabPrice" with "100,50"
    And I fill in "carrierDopDopTochkaPogrPrice" with "110,50"
    And I fill in "carrierDopDopTochkaRazgrPrice" with "120,50"
    And I fill in "carrierDopRastentovkaPrice" with "130,50"
    And I fill in "carrierDopPeregPrice" with "140,50"
    And I fill in "carrierDopNightStayPrice" with "150,50"
    And I fill in "carrierDopMezgorodPrice" with "160,50"
    And I fill in "carrierDopSoprovPrice" with "170,50"
    And I fill in "carrierDopVozvrPrice" with "180,50"
    And I fill in "carrierDopNegabaritPrice" with "190,50"
    And I fill in "carrierDopGruzchPrice" with "200,50"
    And I select "Безнал" from "request_customer_payment_method_id"
    And I select "На руки" from "request_customer_payment_way_id"
    And I fill in "request_customer_maturity" with "6"
    And I fill in "request_customer_prepayment" with "2000"
    And I select "По оригиналам" from "request_customer_payment_doc_id"
    And I fill in "request_bill_id" with "5"
    And I select "Нал" from "request_carrier_payment_method_id"
    And I select "На карту" from "request_carrier_payment_way_id"
    And I fill in "request_carrier_maturity" with "8"
    And I select "По копиям" from "request_carrier_payment_doc_id"
    And I fill in "request_carrier_documents_return_term" with "6"
    And I fill in "request_carrier_bill_id" with "11"
    And I press "request_submit"
    Then I should see "Открыть"
    And I follow "showRequestLink"
    And the "request_item" field should contain "Макароны"
    And "Продукты" should be selected for "request_cargo_classification_id"
    And the "request_volume" field should contain "80"
    And the "request_weight" field should contain "5"
    And the "request_temperature" field should contain "от 5 до 10"
    And the "length" field should contain "1.8"
    And the "width" field should contain "2.8"
    And the "height" field should contain "3.8"
    And the "request_evropallet" field should contain "5"
    And the "request_belts_count" field should contain "4"
    And the "request_crate_body" field should contain "3"
    And the "request_other_conditions" field should contain "разгружать осторожно"
    And the "request_loading_up" checkbox should be checked
    And the "request_loading_down" checkbox should not be checked
    And the "request_loading_side" checkbox should be checked
    And "CustomerCompany2" should be selected for "request_customer_company_id"
    And "CarrierCompany2" should be selected for "request_carrier_company_id"
    And "Иванов Семен Петрович" should be selected for "request_driver_id"
    And "Mercedes Рефрижератор 15.0" should be selected for "request_car_id"
    And the "loadingDate1" field should contain "2011-12-04"
    And the "request_loading_point1_time" field should contain "18:00"
    And the "request_loading_point1_address" field should contain "la1"
    And the "request_loading_point1_shipper" field should contain "ls1"
    And the "request_loading_point1_contact_person" field should contain "lcp1"
    And the "request_loading_point1_phone" field should contain "lph1"
    And the "request_loading_point1_phone_work" field should contain "lpw1"
    And the "unloadingDate1" field should contain "2011-12-05"
    And the "request_unloading_point1_time" field should contain "19:00"
    And the "request_unloading_point1_address" field should contain "ua1"
    And the "request_unloading_point1_consignee" field should contain "uc1"
    And the "request_unloading_point1_contact_person" field should contain "ucp1"
    And the "request_unloading_point1_phone" field should contain "uph1"
    And the "request_unloading_point1_phone_work" field should contain "upw1"

    And the "loadingDate2" field should contain "2011-12-04"
    And the "request_loading_point2_time" field should contain "18:00"
    And the "loadingAddress2" field should contain "la2"
    And the "shipper2" field should contain "ls2"
    And the "loadingContactPerson2" field should contain "lcp2"
    And the "loadingContactPhone2" field should contain "lph2"
    And the "loadingPhoneWork2" field should contain "lpw2"
    And the "unloadingDate2" field should contain "2011-12-05"
    And the "request_unloading_point2_time" field should contain "19:00"
    And the "unloadingAddress2" field should contain "ua2"
    And the "consignee2" field should contain "uc2"
    And the "unloadingContactPerson2" field should contain "ucp2"
    And the "unloadingContactPhone2" field should contain "uph2"
    And the "unloadingPhoneWork2" field should contain "upw2"

    And the "loadingDate3" field should contain "2011-12-04"
    And the "request_loading_point3_time" field should contain "18:00"
    And the "loadingAddress3" field should contain "la3"
    And the "shipper3" field should contain "ls3"
    And the "loadingContactPerson3" field should contain "lcp3"
    And the "loadingContactPhone3" field should contain "lph3"
    And the "loadingPhoneWork3" field should contain "lpw3"
    And the "unloadingDate3" field should contain "2011-12-05"
    And the "request_unloading_point3_time" field should contain "19:00"
    And the "unloadingAddress3" field should contain "ua3"
    And the "consignee3" field should contain "uc3"
    And the "unloadingContactPerson3" field should contain "ucp3"
    And the "unloadingContactPhone3" field should contain "uph3"
    And the "unloadingPhoneWork3" field should contain "upw3"

    And the "loadingDate4" field should contain "2011-12-04"
    And the "request_loading_point4_time" field should contain "18:00"
    And the "loadingAddress4" field should contain "la4"
    And the "shipper4" field should contain "ls4"
    And the "loadingContactPerson4" field should contain "lcp4"
    And the "loadingContactPhone4" field should contain "lph4"
    And the "loadingPhoneWork4" field should contain "lpw4"
    And the "unloadingDate4" field should contain "2011-12-05"
    And the "request_unloading_point4_time" field should contain "19:00"
    And the "unloadingAddress4" field should contain "ua4"
    And the "consignee4" field should contain "uc4"
    And the "unloadingContactPerson4" field should contain "ucp4"
    And the "unloadingContactPhone4" field should contain "uph4"
    And the "unloadingPhoneWork4" field should contain "upw4"

    And the "loadingDate5" field should contain "2011-12-04"
    And the "request_loading_point5_time" field should contain "18:00"
    And the "loadingAddress5" field should contain "la5"
    And the "shipper5" field should contain "ls5"
    And the "loadingContactPerson5" field should contain "lcp5"
    And the "loadingContactPhone5" field should contain "lph5"
    And the "loadingPhoneWork5" field should contain "lpw5"
    And the "unloadingDate5" field should contain "2011-12-05"
    And the "request_unloading_point5_time" field should contain "19:00"
    And the "unloadingAddress5" field should contain "ua5"
    And the "consignee5" field should contain "uc5"
    And the "unloadingContactPerson5" field should contain "ucp5"
    And the "unloadingContactPhone5" field should contain "uph5"
    And the "unloadingPhoneWork5" field should contain "upw5"

    And the "loadingDate6" field should contain "2011-12-04"
    And the "request_loading_point6_time" field should contain "18:00"
    And the "loadingAddress6" field should contain "la6"
    And the "shipper6" field should contain "ls6"
    And the "loadingContactPerson6" field should contain "lcp6"
    And the "loadingContactPhone6" field should contain "lph6"
    And the "loadingPhoneWork6" field should contain "lpw6"
    And the "unloadingDate6" field should contain "2011-12-05"
    And the "request_unloading_point6_time" field should contain "19:00"
    And the "unloadingAddress6" field should contain "ua6"
    And the "consignee6" field should contain "uc6"
    And the "unloadingContactPerson6" field should contain "ucp6"
    And the "unloadingContactPhone6" field should contain "uph6"
    And the "unloadingPhoneWork6" field should contain "upw6"

    And the "loadingDate7" field should contain "2011-12-04"
    And the "request_loading_point7_time" field should contain "18:00"
    And the "loadingAddress7" field should contain "la7"
    And the "shipper7" field should contain "ls7"
    And the "loadingContactPerson7" field should contain "lcp7"
    And the "loadingContactPhone7" field should contain "lph7"
    And the "loadingPhoneWork7" field should contain "lpw7"
    And the "unloadingDate7" field should contain "2011-12-05"
    And the "request_unloading_point7_time" field should contain "19:00"
    And the "unloadingAddress7" field should contain "ua7"
    And the "consignee7" field should contain "uc7"
    And the "unloadingContactPerson7" field should contain "ucp7"
    And the "unloadingContactPhone7" field should contain "uph7"
    And the "unloadingPhoneWork7" field should contain "upw7"

    And the "loadingDate8" field should contain "2011-12-04"
    And the "request_loading_point8_time" field should contain "18:00"
    And the "loadingAddress8" field should contain "la8"
    And the "shipper8" field should contain "ls8"
    And the "loadingContactPerson8" field should contain "lcp8"
    And the "loadingContactPhone8" field should contain "lph8"
    And the "loadingPhoneWork8" field should contain "lpw8"
    And the "unloadingDate8" field should contain "2011-12-05"
    And the "request_unloading_point8_time" field should contain "19:00"
    And the "unloadingAddress8" field should contain "ua8"
    And the "consignee8" field should contain "uc8"
    And the "unloadingContactPerson8" field should contain "ucp8"
    And the "unloadingContactPhone8" field should contain "uph8"
    And the "unloadingPhoneWork8" field should contain "upw8"

    And the "loadingDate8" field should contain "2011-12-04"
    And the "request_loading_point8_time" field should contain "18:00"
    And the "loadingAddress8" field should contain "la8"
    And the "shipper8" field should contain "ls8"
    And the "loadingContactPerson8" field should contain "lcp8"
    And the "loadingContactPhone8" field should contain "lph8"
    And the "loadingPhoneWork8" field should contain "lpw8"
    And the "unloadingDate8" field should contain "2011-12-05"
    And the "request_unloading_point8_time" field should contain "19:00"
    And the "unloadingAddress8" field should contain "ua8"
    And the "consignee8" field should contain "uc8"
    And the "unloadingContactPerson8" field should contain "ucp8"
    And the "unloadingContactPhone8" field should contain "uph8"
    And the "unloadingPhoneWork8" field should contain "upw8"

    And the "loadingDate9" field should contain "2011-12-04"
    And the "request_loading_point9_time" field should contain "18:00"
    And the "loadingAddress9" field should contain "la9"
    And the "shipper9" field should contain "ls9"
    And the "loadingContactPerson9" field should contain "lcp9"
    And the "loadingContactPhone9" field should contain "lph9"
    And the "loadingPhoneWork9" field should contain "lpw9"
    And the "unloadingDate9" field should contain "2011-12-05"
    And the "request_unloading_point9_time" field should contain "19:00"
    And the "unloadingAddress9" field should contain "ua9"
    And the "consignee9" field should contain "uc9"
    And the "unloadingContactPerson9" field should contain "ucp9"
    And the "unloadingContactPhone9" field should contain "uph9"
    And the "unloadingPhoneWork9" field should contain "upw9"

    And the "customerRateHours" field should contain "5"
    And the "customerRatePodachaHours" field should contain "2"
    And the "customerRateHourPrice" field should contain "500.55"
    And the "customerRateSverhPrice" field should contain "700.77"
    And the "carrierRateSumm" field should contain "15000.15"
    And the "carrierRateSverhPrice" field should contain "700.22"
    And the "customerDopPrabPrice" field should contain "10.5"
    And the "customerDopDopTochkaPogrPrice" field should contain "11.5"
    And the "customerDopDopTochkaRazgrPrice" field should contain "12.5"
    And the "customerDopRastentovkaPrice" field should contain "13.5"
    And the "customerDopPeregPrice" field should contain "14.5"
    And the "customerDopNightStayPrice" field should contain "15.5"
    And the "customerDopMezgorodPrice" field should contain "16.5"
    And the "customerDopSoprovPrice" field should contain "17.5"
    And the "customerDopVozvrPrice" field should contain "18.5"
    And the "customerDopNegabaritPrice" field should contain "19.5"
    And the "customerDopGruzchPrice" field should contain "20.5"
    And the "carrierDopPrabPrice" field should contain "100.5"
    And the "carrierDopDopTochkaPogrPrice" field should contain "110.5"
    And the "carrierDopDopTochkaRazgrPrice" field should contain "120.5"
    And the "carrierDopRastentovkaPrice" field should contain "130.5"
    And the "carrierDopPeregPrice" field should contain "140.5"
    And the "carrierDopNightStayPrice" field should contain "150.5"
    And the "carrierDopMezgorodPrice" field should contain "160.5"
    And the "carrierDopSoprovPrice" field should contain "170.5"
    And the "carrierDopVozvrPrice" field should contain "180.5"
    And the "carrierDopNegabaritPrice" field should contain "190.5"
    And the "carrierDopGruzchPrice" field should contain "200.5"
    And "Безнал" should be selected for "request_customer_payment_method_id"
    And "На руки" should be selected for "request_customer_payment_way_id"
    And the "request_customer_maturity" field should contain "6"
    And the "request_customer_prepayment" field should contain "2000"
    And "По оригиналам" should be selected for "request_customer_payment_doc_id"
    And the "request_bill_id" field should contain "5"
    And "Нал" should be selected for "request_carrier_payment_method_id"
    And "На карту" should be selected for "request_carrier_payment_way_id"
    And the "request_carrier_maturity" field should contain "8"
    And "По копиям" should be selected for "request_carrier_payment_doc_id"
    And the "request_carrier_documents_return_term" field should contain "6"
    And the "request_carrier_bill_id" field should contain "11"

  @javascript
  Scenario: Edit Request and check result
    Given I logined as manager
    And I have one filled request
    And I am on the list of requests
    When  I follow "showRequestLink"
    And I follow "editRequestLink"
    And I choose "request_request_type_contract_request"
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
    And I select "CustomerCompany3" from "request_customer_company_id"
    And I select "CarrierCompany8" from "request_carrier_company_id"
    And I select "Иванов Семен Петрович" from "request_driver_id"
    And I select "Mercedes Рефрижератор 15.0" from "request_car_id"

    And I click to "#loadingButtonDelete p"
    And I disable dateTimeEntry 2
    And I fill in "loadingDate2" with "2011-12-04"
    And I fill in "request[loading_points_attributes][2][time]" with "18:00"
    And I fill in "loadingAddress2" with "la2"
    And I fill in "shipper2" with "ls2"
    And I fill in "loadingContactPerson2" with "lcp2"
    And I fill in "loadingContactPhone2" with "lph2"
    And I fill in "loadingPhoneWork2" with "lpw2"
    And I fill in "unloadingDate2" with ""
    And I fill in "request[unloading_points_attributes][2][time]" with ""
    And I fill in "unloadingAddress2" with ""
    And I fill in "consignee2" with ""
    And I fill in "unloadingContactPerson2" with ""
    And I fill in "unloadingContactPhone2" with ""
    And I fill in "unloadingPhoneWork2" with ""

    And I click to ".customerPayMethodButton"
    And I fill in "customerRateSumm" with "15000"
    And I fill in "customerRateSverhPrice" with "700"
    And I click to ".carrierPayMethodButton"
    And I fill in "carrierRateHours" with "5"
    And I fill in "carrierRatePodachaHours" with "2"
    And I fill in "carrierRateHourPrice" with "500"
    And I fill in "carrierRateSverhPrice" with "700"

    And I fill in "customerDopPrabCount" with "1"
    And I fill in "customerDopPrabPrice" with "1000"
    And I fill in "customerDopDopTochkaPogrCount" with "2"
    And I fill in "customerDopDopTochkaPogrPrice" with "2000"
    And I fill in "customerDopDopTochkaRazgrCount" with "5"
    And I fill in "customerDopDopTochkaRazgrPrice" with "1000"
    And I fill in "customerDopRastentovkaCount" with "1"
    And I fill in "customerDopRastentovkaPrice" with "1000"
    And I fill in "customerDopPeregCount" with "5"
    And I fill in "customerDopPeregPrice" with "1000"
    And I fill in "customerDopNightStayCount" with "2"
    And I fill in "customerDopNightStayPrice" with "3000"
    And I fill in "customerDopMezgorodCount" with "2"
    And I fill in "customerDopMezgorodPrice" with "15000"
    And I fill in "customerDopSoprovCount" with "4"
    And I fill in "customerDopSoprovPrice" with "25000"
    And I fill in "customerDopVozvrCount" with "10"
    And I fill in "customerDopVozvrPrice" with "1000"
    And I fill in "customerDopNegabaritCount" with "5"
    And I fill in "customerDopNegabaritPrice" with "10000"
    And I fill in "customerDopGruzchCount" with "2"
    And I fill in "customerDopGruzchPrice" with "25000"
    And I fill in "carrierDopPrabCount" with "1000"
    And I fill in "carrierDopPrabPrice" with "1000"
    And I fill in "carrierDopDopTochkaPogrCount" with "50"
    And I fill in "carrierDopDopTochkaPogrPrice" with "1000"
    And I fill in "carrierDopDopTochkaRazgrCount" with "2"
    And I fill in "carrierDopDopTochkaRazgrPrice" with "50000"
    And I fill in "carrierDopRastentovkaCount" with "2"
    And I fill in "carrierDopRastentovkaPrice" with "50000"
    And I fill in "carrierDopPeregCount" with "1"
    And I fill in "carrierDopPeregPrice" with "15000"
    And I fill in "carrierDopNightStayCount" with "1"
    And I fill in "carrierDopNightStayPrice" with "15000"
    And I fill in "carrierDopMezgorodCount" with "200"
    And I fill in "carrierDopMezgorodPrice" with "1000"
    And I fill in "carrierDopSoprovCount" with "3"
    And I fill in "carrierDopSoprovPrice" with "100000"
    And I fill in "carrierDopVozvrCount" with "2"
    And I fill in "carrierDopVozvrPrice" with "10000"
    And I fill in "carrierDopNegabaritCount" with "10"
    And I fill in "carrierDopNegabaritPrice" with "10000"
    And I fill in "carrierDopGruzchCount" with "2"
    And I fill in "carrierDopGruzchPrice" with "500"
    And I select "Безнал" from "request_customer_payment_method_id"
    And I select "На руки" from "request_customer_payment_way_id"
    And I fill in "request_customer_maturity" with "6"
    And I fill in "request_customer_prepayment" with "2000"
    And I select "По оригиналам" from "request_customer_payment_doc_id"
    And I fill in "request_bill_id" with "5"
    And I select "Нал" from "request_carrier_payment_method_id"
    And I select "На карту" from "request_carrier_payment_way_id"
    And I fill in "request_carrier_maturity" with "8"
    And I select "По копиям" from "request_carrier_payment_doc_id"
    And I fill in "request_carrier_documents_return_term" with "6"
    And I fill in "request_carrier_bill_id" with "11"

    And I fill in "customerResponsibilityCarDenyPrice" with "5"
    And I fill in "customerResponsibilityProstoyCount" with "2"
    And I fill in "customerResponsibilityProstoyPrice" with "2"
    And I fill in "customerResponsibilityPaymentLateCount" with "5"
    And I fill in "customerResponsibilityPaymentLatePrice" with "10"

    And I fill in "carrierResponsibilityCarDenyPrice" with "5"
    And I fill in "carrierResponsibilityLateCount" with "2"
    And I fill in "carrierResponsibilityLatePrice" with "5"
    And I fill in "carrierResponsibilityDeliveryLateCount" with "1"
    And I fill in "carrierResponsibilityDeliveryLatePrice" with "8"
    And I fill in "carrierResponsibilityDocumentLateCount" with "2"
    And I fill in "carrierResponsibilityDocumentLatePrice" with "3"

    And I press "request_submit"

    And the "request_item" field should contain "Макароны"
    And "Продукты" should be selected for "request_cargo_classification_id"
    And the "request_volume" field should contain "80"
    And the "request_weight" field should contain "5"
    And the "request_temperature" field should contain "от 5 до 10"
    And the "length" field should contain "1.8"
    And the "width" field should contain "2.8"
    And the "height" field should contain "3.8"
    And the "request_evropallet" field should contain "5"
    And the "request_belts_count" field should contain "4"
    And the "request_crate_body" field should contain "3"
    And the "request_other_conditions" field should contain "разгружать осторожно"
    And the "request_loading_up" checkbox should be checked
    And the "request_loading_down" checkbox should be checked
    And the "request_loading_side" checkbox should be checked
    And "CustomerCompany3" should be selected for "request_customer_company_id"
    And "CarrierCompany8" should be selected for "request_carrier_company_id"
    And "Иванов Семен Петрович" should be selected for "request_driver_id"
    And "Mercedes Рефрижератор 15.0" should be selected for "request_car_id"

    And the "loadingDate2" field should contain "2011-12-04"
    And the "request_loading_point2_time" field should contain "18:00"
    And the "loadingAddress2" field should contain "la2"
    And the "shipper2" field should contain "ls2"
    And the "loadingContactPerson2" field should contain "lcp2"
    And the "loadingContactPhone2" field should contain "lph2"
    And the "loadingPhoneWork2" field should contain "lpw2"
    And the "unloadingDate2" field should contain ""
    And the "request_unloading_point2_time" field should contain ""
    And the "unloadingAddress2" field should contain ""
    And the "consignee2" field should contain ""
    And the "unloadingContactPerson2" field should contain ""
    And the "unloadingContactPhone2" field should contain ""
    And the "unloadingPhoneWork2" field should contain ""
    And "Безнал" should be selected for "request_customer_payment_method_id"
    And "На руки" should be selected for "request_customer_payment_way_id"
    And the "request_customer_maturity" field should contain "6"
    And the "request_customer_prepayment" field should contain "2000"
    And "По оригиналам" should be selected for "request_customer_payment_doc_id"
    And the "request_bill_id" field should contain "5"
    And "Нал" should be selected for "request_carrier_payment_method_id"
    And "На карту" should be selected for "request_carrier_payment_way_id"
    And the "request_carrier_maturity" field should contain "8"
    And "По копиям" should be selected for "request_carrier_payment_doc_id"
    And the "request_carrier_documents_return_term" field should contain "6"
    And the "request_carrier_bill_id" field should contain "11"
    And the "customerResponsibilitySumm" field should contain "146084"
    And the "carrierResponsibilitySumm" field should contain "575853"
