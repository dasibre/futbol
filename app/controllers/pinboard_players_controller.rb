class PinboardPlayersController < ApplicationController
  before_filter :authenticate_user!, only: [:create, :destroy]

  def new
   session[:player] = params[:id]
      @pinboard_player = PinboardPlayer.new(player_id: params[:id]) 
      @current_user_pinboards = get_user_pinboards
     user_pinboards_check?
  end

  def create
    player_id = session[:player]
    @player = Player.find(player_id)
    @pinboard = current_user.pinboards.find(params[:board])
    PinboardPlayer.pin_player(@pinboard, @player)
    redirect_to pinboard_path(@pinboard)
  end
  
  def destroy
    PinboardPlayer.find_by_player_id(params[:player_id]).destroy
    redirect_to pinboards_path, notice: "Pin successfully removed"
  end

  private

  def get_user_pinboards

  	if current_user
       current_user.pinboards
  		 #redirect_to new_pinboard_path, notice: "Please create a new pinboard"
  	else
  		redirect_to root_path, notice: "Please sign in to pin players"
  	end
  end

  def user_pinboards_check?
    redirect_to new_pinboard_path, notice: "Please create a pinboard" if get_user_pinboards.empty?
  end
end
