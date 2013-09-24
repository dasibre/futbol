Feature: Show user/fan's pinboards and pins
  As a fan/user 
  I want my dashboard to display all my pinboards
  So I can see pinboards i have created
  And I can see my pinboard players(pins)
  
  Background: I am a user/fan
    Given I am a user
    And   I am signed in

  @dashboard_index
  @javascript
  Scenario: As a fan/user
    Given   I create a pinboard "Epl-Pinboard"
    When  I visit my "dashboard_index" page
    Then  I should see my pinboard "Epl-Pinboard"

  @show_pins
  @javascript
  @pause
  Scenario: See all my pinned players
    Given  I have a pinboard
    When   I visit pinboard page
    Then   I should see all my pinned players
