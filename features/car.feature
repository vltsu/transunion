Feature: Cars

  So managers can add, edit, delete, view cars
  As a registered user with role manager
  I want to CRUD a cars

  Scenario: Create cars
    Given an index cars
    When I create a car with model "Man", tonnage "11.11"
    And type "Refrijerator", driver "Petrov Ivan Ivanovich"
    Then car with model "Man", tonnage "11.11"
    And car: type "Refrijerator", driver "Petrov Ivan Ivanovich" created

  Scenario: Edit car
    Given a car page
    When I update car fields: type "Benzovoz", driver "Abrahabr Fedor Selenovich"
    And update car: model "Mercedes", tonnage "15.15"
    Then car updated with values: type "Benzovoz", driver "Abrahabr Fedor Selenovich"
    And updated with: model "Mercedes", tonnage "15.15"

  Scenario: Delete car
    Given an index cars page with one car
    When I open car's card and press Delete button
    Then car deleted

