Feature: Editing a student surname
  Scenario: Create aliases
    Given I set the alias mappings
      | First Student Edit | /html/body/div[2]/table/tbody/tr[2]/td[4]/a[1] |
      | Last Name | LastName |

  Scenario: Open the app
    Given I open the page "https://contoso.azurewebsites.net"
    Then I wait "30" seconds for the page to contain the text "Contoso University"

  Scenario: Open the Students screen
    When I display the help message "The Students screen allows student information to be managed."
    And I click the "Students" link
    Then I wait "30" seconds for the page to contain the text "Find by name"

  Scenario: Edit a student
    When I display the help message "The Edit link allows student details to be edited"
    And I click the "First Student Edit" link
    And I clear the "Last Name" text box
    And I populate the "Last Name" text box with "Smith"
    And I click the "Save" button
    Then I display the help message "The student's name has been updated in the database."
