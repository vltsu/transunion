Feature: Authenticate user

  So users can enter to site
  As a registered users
  I want to authenticate them

  Scenario: Authenticate user
    Given an sign-in page
    When I enter "TestUser" in login field and "TestPassword" in password field
    Then I redirected to site index page

