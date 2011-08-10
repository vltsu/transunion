Feature: PaymentWays

  So administrator can add, edit, delete, view payment_ways
  As a registered user with role administrator
  I want to CRUD a payment_way

  Scenario: Create payment_way
    Given I logined as admin
    And an index payment_ways page
    When I create an payment_way with payment_way "PaymentWays name"
    Then PaymentWays with payment_way "PaymentWays name" created

  Scenario: Edit payment_way
    Given I logined as admin
    And an payment_way page
    When I update payment_way field to "PaymentWays second name"
    Then Payment_ways updated with value: payment_way "PaymentWays second name"

  Scenario: Delete payment_way
    Given I logined as admin
    And an index payment_ways page with one payment_way
    When I open payment_ways's card and press "Delete" button
    Then Payment_ways deleted
