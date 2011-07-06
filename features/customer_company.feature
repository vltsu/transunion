Feature: Customer_companies

  So managers can add, edit, delete, view customer companies 
  As a registered user with role manager
  I want to CRUD a customer companies

  Scenario: Create customer company
    Given an index customer company page
    When I create a customer company with title "CustomerCompanyTitle" 
    And customer: opf "ZAO", deistvuet na osnovanii "Ustava", v lice "General Director"
    And customer: manager name "Ivan Petrov", legal adress "Moscow, 5", actual address "Magadan, 8"
    And customer: phone "12345"
    Then customer company with title "CustomerCompanyTitle"
    And customer: Opf "ZAO", deistvuet na osnovanii "Ustava", v lice "General Director"
    And customer: Manager name "Ivan Petrov", legal adress "Moscow, 5", actual address "Magadan, 8"
    And customer: Phone "12345" created

  Scenario: Edit customer company
    Given a customer company page
    When I update customer company fields: title to "CustomerCompanySecondTitle"
    And update customer: opf "OOO", deistvuet na osnovanii "Zakona", v lice "CIO"
    And update customer: manager name "Ivan Ivanov", legal adress "Moscow, 8", actual address "Magadan, 1"
    And update customer: phone "34567"
    Then customer company  updated with values: title "CustomerCompanySecondTitle"
    And updated customer: opf "OOO", deistvuet na osnovanii "Zakona", v lice "CIO"
    And updated customer: manager name "Ivan Ivanov", legal adress "Moscow, 8", actual address "Magadan, 1"
    And updated customer: phone "34567"

  Scenario: Delete customer company 
    Given an index customer companies page with one company
    When I open customer companie's card and press Delete button
    Then customer company deleted

