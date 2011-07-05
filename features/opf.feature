Feature: OPF

  So administrator can add, edit, delete, view opfs 
  As a registered user with role administrator
  I want to CRUD a opf 

  Scenario: Create opf
    Given an index opfs page
    When I create an opf with opf "OPF name"
    Then OPF with opf "OPF name" created

  Scenario: Edit opf
    Given an opf page
    When I update opf field to "OPF second name"
    Then Opf updated with value: opf "OPF second name"

  Scenario: Delete opf 
    Given an index opfs page with one opf
    When I open opfs's card and press "Delete" button
    Then Opf deleted

