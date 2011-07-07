Feature: PaymentDocs

  So administrator can add, edit, delete, view payment_docs 
  As a registered user with role administrator
  I want to CRUD a payment_doc 

  Scenario: Create payment_doc
    Given an index payment_docs page
    When I create an payment_doc with payment_doc "PaymentDocs name"
    Then PaymentDocs with payment_doc "PaymentDocs name" created

  Scenario: Edit payment_doc
    Given an payment_doc page
    When I update payment_doc field to "PaymentDocs second name"
    Then Payment_docs updated with value: payment_doc "PaymentDocs second name"

  Scenario: Delete payment_doc 
    Given an index payment_docs page with one payment_doc
    When I open payment_docs's card and press "Delete" button
    Then Payment_docs deleted

