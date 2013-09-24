Given(/^I have  players "(.*?)","(.*?)", and "(.*?)"$/) do |arg1, arg2, arg3|
   @players = [arg1,arg2,arg3]
   club = FactoryGirl.create(:club)
    @players.each do |player|
      FactoryGirl.create(:player, first_name: player.split().first, last_name: player.split().last, club_id: club.id)
    end
end

Given(/^I am a logged in user$/) do
  @user = FactoryGirl.create(:user)  
  visit new_user_session_path
  fill_in "Email", with: @user.email
  fill_in "Password", with: @user.password
  click_button "Sign in"
end

When(/^I visit the players index page$/) do
    visit players_index_path
end
 
Then(/^I should see players "(.*?)", "(.*?)", "(.*?)"$/) do |arg1, arg2, arg3|
   page.should have_content(arg1,arg2, arg3)
end

