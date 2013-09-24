class PinboardPlayers < ActiveRecord::Migration
  def change
  	create_table :pinboard_players do |t|
  		t.belongs_to	:player
  		t.belongs_to	:pinboard
  	end
  end
end
