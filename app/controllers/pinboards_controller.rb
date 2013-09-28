class PinboardsController < ApplicationController
  def index
    @pinboards = current_user.pinboards
  end

  def new
  	@pinboard = Pinboard.new
    store_location
  end

  def create
  	@pinboard = current_user.pinboards.build(pinboard_params)
  	if @pinboard.save
  		flash[:notice] = "Pinboard Created"
  		redirect_to pinboards_path
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

  def store_location
      session[:return_to] = request.fullpath
   end

  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    session[:return_to] = nil
  end
end
