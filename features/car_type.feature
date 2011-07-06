Feature: Car Type

  So administrator can add, edit, delete, view car_types 
  As a registered user with role administrator
  I want to CRUD a car_type 

  Scenario: Create car_type
    Given an index car_types page
    When I create an car_type with car_type "CarTypeFirst"
    Then Car_type with car_type "CarTypeFirst" created

  Scenario: Edit car_type
    Given an car_type page
    When I update car_type field to "CarTypeSecond"
    Then Car_type updated with value: car_type "CarTypeSecond"

  Scenario: Delete car_type 
    Given an index car_types page with one car_type
    When I open car_type's card and press "Delete" button
    Then Car_type deleted

