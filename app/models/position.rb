# == Schema Information
#
# Table name: positions
#
#  id              :integer          not null, primary key
#  player_position :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class Position < ActiveRecord::Base
	has_many :players
end
