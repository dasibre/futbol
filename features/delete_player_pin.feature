Feature: Delete a pin
  As a user/fan
  I want to delete a pinned player
  So I dont have pin on my pinboard

  @delete_pin
  @javascript
  @pause
  Scenario: Delete a player from pinboard
    Given I am signed in
    And   I am on pinboard "Epl" page
    And   I have 1 pinned player
    When  I click button "Remove Pin"
    Then  I should not see pinned player
