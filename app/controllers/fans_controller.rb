class FansController < ApplicationController
	def index
		@players = Player.all[0..10].shuffle
	end
end