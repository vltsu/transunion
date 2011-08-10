Feature: Cars

  So managers can add, edit, view cars
  As a registered user with role manager
  I want to CRUD a cars

  Scenario: Create car
    Given I logined as manager
    And cars index page
    When I create a car with model "Man", tonnage "11.5"
    And type "Тент", driver "Кузьменко Иван Спиридонович"
    Then car with model "Man", tonnage "11.5"
    And car: type "Тент", driver "Кузьменко Иван Спиридонович" created

  Scenario: Edit car
    Given I logined as manager
    And a car page
    When I update car fields: type "Рефрижератор", driver "Иванов Семен Петрович"
    And update car: model "Mercedes", tonnage "15.0"
    Then car updated with values: type "Рефрижератор", driver "Иванов Семен Петрович"
    And updated with: model "Mercedes", tonnage "15.0"
