Feature: Drivers

  So managers can add, edit, delete, view drivers
  As a registered user with role manager
  I want to CRUD a driver from a specific company

  Scenario: Create driver
    Given I logined as admin
    And an index drivers page
    When I create a driver with firstname "Ivan" and lastname "Petrov" with company "CarrierCompany1"
    Then Driver with name "Ivan" "Petrov" and "CarrierCompany1" company created

  Scenario: Edit driver
    Given I logined as admin
    And a driver page
    When I update driver fields: middlename to "Petrovich", company to "CarrierCompany12", work mobile phone to "1234500"
    Then Driver updated with values: firstname "Иван", middlename "Petrovich", company "CarrierCompany12", work mobile phone "1234500"

  Scenario: Delete driver
    Given I logined as admin
    And an index drivers page with one driver
    When I open drivers's card and press "Delete" button
    Then Driver deleted
