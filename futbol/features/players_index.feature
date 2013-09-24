Feature: List players on index page
  As a fan/user
  I want to view all the EPL players
  So I can add my favorite to a pinboard

  Background: Players added
    Given I have  players "Michael Essien","Abedi Pele", and "Tony Yeboah"


  @players_index
  @javascript
  Scenario: View all players
    Given  I am a logged in user
    When   I visit the players index page
    Then   I should see players "Michael Essien", "Abedie Pele", "Tony Yeboah"


