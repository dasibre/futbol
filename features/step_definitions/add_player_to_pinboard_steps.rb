Given(/^I have pinboard$/) do
  @user = User.new  
  @pinboard = @user.pinboards.build(name: "Epl", description: "Epl players")
end

Given(/^I am on the players index page$/) do
    @club = FactoryGirl.create(:club)
    @player = FactoryGirl.create(:player, club: @club)
    visit players_path
    page.should have_content("Players")
end

When(/^I click on "(.*?)"$/) do |pin_player|
    click_link pin_player
end

Then(/^My pinboard should include player$/) do
    @pinboard.players.include?(@player)
end
