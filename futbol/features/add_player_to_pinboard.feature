Feature: Add a player to pinboard
  As a fan/user
  I want to add a player to my pinboard

  Background: I am a fan
    Given I am a fan/user
  @add_player
  @javascript
  @pause
 Scenario: Add player to pinboard
    Given I have pinboard
    And   I am signed in
    And   I am on the players index page
    When  I click on "Pin"
    Then  My pinboard should include player
 
      
        
