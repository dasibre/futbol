class PinboardPlayersController < ApplicationController
  before_filter :authenticate_user!, only: [:create, :destroy]

  def new
     session[:player] = params[:id]
      @pinboard_player = PinboardPlayer.new(player_id: params[:id]) 
      @current_user_pinboards = get_user_pinboards
      # user_pinboards_check?
  end

  def create
    player_id = session[:player]
    @player = Player.find(player_id)
    @pinboard = current_user.pinboards.find(params[:board])
    PinboardPlayer.pin_player(@pinboard, @player)
    redirect_to pinboard_path(@pinboard)
  end
  
  def destroy
    @pinboard = params[:pinboard]
    PinboardPlayer.find_by_player_id(params[:id]).destroy
    redirect_to pinboard_path(@pinboard), notice: "Pin successfully removed"
  end

  private

  def get_user_pinboards

  	if current_user
       @current_user_pinboards = current_user.pinboards
  		 if @current_user_pinboards.empty?
          redirect_to_new_pinboard
       else
          @current_user_pinboards
       end
  	else
  		redirect_to login_path, notice: "Please sign in to pin players"
  	end
  end

  def redirect_to_new_pinboard
    redirect_to new_pinboard_path, notice: "Please create a pinboard"
  end

end
