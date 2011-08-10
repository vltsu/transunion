Feature: Car Tonnage

  So administrator can add, edit, delete, view car_tonnages
  As a registered user with role administrator
  I want to CRUD a car_tonnage

  Scenario: Create car_tonnage
    Given I logined as admin
    And an index car_tonnages page
    When I create an car_tonnage with car_tonnage "11.11"
    Then Car_tonnage with car_tonnage "11.11" created

  Scenario: Edit car_tonnage
    Given I logined as admin
    And an car_tonnage page
    When I update car_tonnage field to "12.12"
    Then Car_tonnage updated with value: car_tonnage "12.12"

  Scenario: Delete car_tonnage
    Given I logined as admin
    And an index car_tonnages page with one car_tonnage
    When I open car_tonnage's card and press "Delete" button
    Then Car_tonnage deleted
