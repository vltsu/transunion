Feature: Create driver

  So managers can add drivers to database
  As a registered user
  I want to create a driver from a specific company

  Scenario: Create driver
    Given an index drivers page
    When I create a driver with firstname Ivan and lastname Petrov with company CarrierCompany
    Then Driver with name Ivan Petrov and CarrierCompany company created

