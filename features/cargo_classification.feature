Feature: cargo_classification

  So administrator can add, edit, delete, view cargo_classifications 
  As a registered user with role administrator
  I want to CRUD a cargo_classification 

  Scenario: Create cargo_classification
    Given an index cargo_classifications page
    When I create an cargo_classification with cargo_classification "CargoClassification name"
    Then CargoClassification with cargo_classification "CargoClassification name" created

  Scenario: Edit cargo_classification
    Given an cargo_classification page
    When I update cargo_classification field to "CargoClassification second name"
    Then Cargo_classification updated with value: cargo_classification "CargoClassification second name"

  Scenario: Delete cargo_classification 
    Given an index cargo_classifications page with one cargo_classification
    When I open cargo_classifications's card and press "Delete" button
    Then Cargo_classification deleted

