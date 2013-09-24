Given(/^I am a fan\/user$/) do
    @user_fan = User.new
end

Given(/^I have no pinboards$/) do
    @user_fan.pinboards.nil?
end

When(/^I add a new pinboard "(.*?)"$/) do |board_name|
  @user_fan_pinboard = @user_fan.pinboards.new(name: board_name)
end

When(/^I save it$/) do
    @user_fan_pinboard.save
end

Then(/^I should see a pinboard "(.*?)"$/) do |board_name|
    @user_fan_pinboard.name.should == board_name
end
