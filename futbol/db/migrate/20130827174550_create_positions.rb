class CreatePositions < ActiveRecord::Migration
  def change
    create_table  :positions do |t|
    	t.string  :player_position
      t.timestamps
    end
  end
end
