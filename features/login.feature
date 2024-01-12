Feature: Login
    As a moviegoer
    So that I can have my actions attributed to me 
    I want to login to the website

Scenario: Login uses email
    Given moviegoer with email "pcr@tamu.edu" and name "prof. ritchey" exists
    And I am on the "login" page
    When I select "pcr@tamu.edu" from "Email"
    And I click on "Login"
    Then I should be on the "show" page for the moviegoer "pcr@tamu.edu"

