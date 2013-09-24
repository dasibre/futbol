class PinboardPlayer < ActiveRecord::Base
	belongs_to :player
	belongs_to :pinboard
	
	def self.pin_player(a_pin_board, a_player)
		assignment = a_pin_board.pinboard_players.build
		assignment.player = a_player
		assignment.save!
	end
end
