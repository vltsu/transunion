Feature: PaymentMethods

  So administrator can add, edit, delete, view payment_methods
  As a registered user with role administrator
  I want to CRUD a payment_method

  Scenario: Create payment_method
    Given I logined as admin
    And an index payment_methods page
    When I create an payment_method with payment_method "PaymentMethods name"
    Then PaymentMethods with payment_method "PaymentMethods name" created

  Scenario: Edit payment_method
    Given I logined as admin
    And an payment_method page
    When I update payment_method field to "PaymentMethods second name"
    Then Payment_methods updated with value: payment_method "PaymentMethods second name"

  Scenario: Delete payment_method
    Given I logined as admin
    And an index payment_methods page with one payment_method
    When I open payment_methods's card and press "Delete" button
    Then Payment_methods deleted
