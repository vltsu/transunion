Feature: CompanyFace

  So administrator can add, edit, delete, view company_faces 
  As a registered user with role administrator
  I want to CRUD a company_face 

  Scenario: Create company_face
    Given an index company_faces page
    When I create a company_face with company_face "Big director"
    Then OPF with company_face "Big director" created

  Scenario: Edit company_face
    Given a company_face page
    When I update company_face field to "Much bigger director"
    Then Company_face updated with value: company_face "Much bigger director"

  Scenario: Delete company_face 
    Given an index company_faces page with one company_face
    When I open company_faces's card and press "Delete" button
    Then Company_face deleted

