Feature: Create user

  So managers can add users to database
  As a user with manager role
  I want to create a new user with manager role

  Scenario: Create user
    Given an index users page
    When I create a user with firstname "Иван", lastname "Петров", middlename "Борисович" with role "manager"
    Then User "Петров" "Иван" "Борисович" with role "manager" created

