Feature: Car Model

  So administrator can add, edit, delete, view car_models
  As a registered user with role administrator
  I want to CRUD a car_model

  Scenario: Create car_model
    Given I logined as admin
    And car_models index page
    When I create an car_model with car_model "CarModelFirst"
    Then Car_model with car_model "CarModelFirst" created

  Scenario: Edit car_model
    Given I logined as admin
    Given an car_model page
    When I update car_model field to "CarModelSecond"
    Then Car_model updated with value: car_model "CarModelSecond"

  Scenario: Delete car_model
    Given I logined as admin
    And an index car_models page with one car_model
    When I open car_model's card and press "Delete" button
    Then Car_model deleted
