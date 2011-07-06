Feature: Carrier_companies

  So managers can add, edit, delete, view carrier companies 
  As a registered user with role manager
  I want to CRUD a carrier companies

  Scenario: Create carrier company
    Given an index carrier company page
    When I create a company with title "CarrierCompanyTitle" 
    And opf "ZAO", deistvuet na osnovanii "Ustava", v lice "General Director"
    And manager name "Ivan Petrov", legal adress "Moscow, 5", actual address "Magadan, 8"
    And phone "12345"
    Then carrier company with title "CarrierCompanyTitle"
    And Opf "ZAO", deistvuet na osnovanii "Ustava", v lice "General Director"
    And Manager name "Ivan Petrov", legal adress "Moscow, 5", actual address "Magadan, 8"
    And Phone "12345" created

  Scenario: Edit carrier company
    Given a carrier company page
    When I update carrier company fields: title to "CarrierCompanySecondTitle"
    And update: opf "OOO", deistvuet na osnovanii "Zakona", v lice "CIO"
    And update: manager name "Ivan Ivanov", legal adress "Moscow, 8", actual address "Magadan, 1"
    And update: phone "34567"
    Then carrier company  updated with values: title "CarrierCompanySecondTitle"
    And updated: opf "OOO", deistvuet na osnovanii "Zakona", v lice "CIO"
    And updated: manager name "Ivan Ivanov", legal adress "Moscow, 8", actual address "Magadan, 1"
    And updated: phone "34567"

  Scenario: Delete carrier company 
    Given an index carrier companies page with one company
    When I open carrier companie's card and press Delete button
    Then carrier company deleted

