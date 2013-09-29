# == Schema Information
#
# Table name: pinboards
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  player_id   :integer
#  user_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Pinboard < ActiveRecord::Base
	belongs_to 	    :user
	has_many		:pinboard_players, dependent: :destroy
	has_many		:players, through: :pinboard_players

	def pin_player_to_board(player)
		PinboardPlayer.pin_player(self, player)	
	end

	
end


