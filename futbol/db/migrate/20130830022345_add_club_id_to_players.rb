class AddClubIdToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :club_id, :integer
    add_index :players, :club_id
  end
end
