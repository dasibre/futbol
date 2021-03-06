class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def get_player_videos(player)
  	@player_videos ||= Player.get_videos(player)
  end

  helper_method :get_player_videos
end
