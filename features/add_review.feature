Feature: Add a Review
  As a moviegoer
  So that I can tell people what I thought about a movie I watched
  I want to leave a review on the movie.

Scenario: Moviegoer is logged in and reaches the add a review form
  Given movie with title "Everything Everywhere All at Once" exists
  And I am on the "show" page for the movie "Everything Everywhere All at Once"
  When I click "Add a review"
  Then I should be on the "add review" page for the movie "Everything Everywhere All at Once"

Scenario: Moviegoer leaves a review
  Given movie with title "Everything Everywhere All at Once" exists
  And moviegoer with email "moviebuff9000@gmail.com" and name "marlon brando" exists
  And I am logged in as "moviebuff9000"
  And I am on the "new review" page for the movie "Everything Everywhere All at Once"
  And the title of my review is "Best Movie of 2023"
  And the body of my review is "EEAaO is, hands down, the best movie I can ever remember."
  And I give it 5 potatoes
  When I click "Submit"
  Then I should be on the "show" page for the movie "Everything Everywhere All at Once"
  And I should see a review titled "Best Movie of 2023" with body "EEAaO is, hands down, the best movie I can ever remember." and 5 potatoes
