Given(/^I am on pinboard "(.*?)" page$/) do |arg1|
    pinboard = FactoryGirl.create(:pinboard, name: arg1, description: "Epl board")
    visit pinboard_path(pinboard)
    page.should have_content("Epl")
end

Given(/^I have (\d+) pinned player$/) do |one|
    @pinboard = Pinboard.find_by_name("Epl")
    club = FactoryGirl.create(:club)
    @player = FactoryGirl.create(:player, club_id: club.id)
    @pinboard.pin_player_to_board(@player)
end

When(/^I click button "(.*?)"$/) do |remove_pin|
    visit pinboard_path(@pinboard)
    click_button remove_pin
end

Then(/^I should not see pinned player$/) do
    page.should have_content("Pin successfully removed")
    @pinboard.players.should_not include(@player)
end

