Feature: CRUD movies
    As developer
    I want to CRUD movies
    So that I can implement features that require movies

Scenario: create a movie
    Given I am on the "new movie" page
    When I fill in "movie[title]" with "Alien"
    And I click "Create Movie" 
    Then I should be on the "show" page for the movie "Alien"
    And I should see "Alien"

Scenario: read a movie
    Given movie with title "Alien" exists
    And I am on the "movie index" page
    When I click on "Alien"
    Then I should be on the "show" page for the movie "Alien"
    And I should see "Alien"

Scenario: update a movie
    Given movie with title "Alien" exists
    And I am on the "edit" page for the movie "Alien"
    When I fill in "movie[title]" with "The Matrix"
    And I click "Update Movie"
    Then I should be on the "show" page for the movie "The Matrix"
    And I should see "The Matrix"

Scenario: delete a movie
    Given movie with title "Alien" exists
    And I am on the "show" page for the movie "Alien"
    When I click "Destroy this movie"
    Then I should be on the "movie index" page
    And I should see "Movie was successfully destroyed."
    And I should not see "Alien"