Feature: CRUD Moviegoers

    As developer
    I want to CRUD moviegoers
    So that I can implement features that require moviegoers

Scenario: create a moviegoer
    Given I am on the "new moviegoer" page
    When I fill in "Email" with "pcr@tamu.edu"
    And I fill in "Name" with "prof. ritchey"
    And I click "Create Moviegoer" 
    Then I should be on the "show" page for the moviegoer "pcr@tamu.edu"
    And I should see "prof. ritchey"

Scenario: read a moviegoer
    Given moviegoer with "email" "pcr@tamu.edu" and "name" "prof. ritchey" exists
    And I am on the "moviegoer index" page
    When I click on "prof. ritchey"
    Then I should be on the "show moviegoer" page for "pcr@tamu.edu"
    And I should see "prof. ritchey"

Scenario: update a moviegoer
    Given moviegoer with "email" "pcr@tamu.edu" and "name" "prof. ritchey" exists
    And I am on the "edit moviegoer" page for "pcr@tamu.edu"
    When I fill in "name" with "philip"
    And I click "submit"
    Then I should be on the "show moviegoer" page for "pcr@tamu.edu"
    And I should see "philip"

Scenario: delete a moviegoer
    Given moviegoer with "email" "pcr@tamu.edu" and "name" "prof. ritchey" exists
    And I am on the "show moviegoer" page for "pcr@tamu.edu"
    When I click "delete"
    Then I should be on the "moviegoer index" page
    And I should see "moviegoer deleted"
    And I should not see "pcr@tamu.edu"