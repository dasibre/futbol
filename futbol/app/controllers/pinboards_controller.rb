class PinboardsController < ApplicationController
  def index
    @pinboards = current_user.pinboards
  end

  def new
  	@pinboard = Pinboard.new
  end

  def create
  	@pinboard = current_user.pinboards.build(pinboard_params)
  	if @pinboard.save
  		flash[:notice] = "Pinboard Created"
  		redirect_to players_path
  	else
  		render :new
  	end
  end
  
  def show
    @pinboard = Pinboard.find(params[:id])
    @pinboard_players = @pinboard.players
  end

  private

  def pinboard_params
  	params.require(:pinboard).permit(:name, :description)
  end
end
