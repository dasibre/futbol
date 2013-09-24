Feature: Create pinboard
	As a fan/user
	I want to have a pinboard
	So I can add my favorite players to my pinboard

	Background: I am a fan
		Given I am a fan/user

	Scenario: Add/create a new pinboard
		Given I have no pinboards
		When  I add a new pinboard "EPL"
		And   I save it
		Then  I should see a pinboard "EPL"