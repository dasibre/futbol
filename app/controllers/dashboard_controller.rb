class DashboardController < ApplicationController
	before_filter :authenticate_user!
  def index
  	@current_user_pinboards = current_user.pinboards.load
  	#@current_user_pinboard_players = current_user.pins
  end
end
