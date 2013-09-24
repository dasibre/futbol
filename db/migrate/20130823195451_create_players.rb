class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string 		  :first_name
      t.string 		  :last_name
      t.integer     :jersey_number
      t.string 		  :height
      t.string 		  :weight
      t.datetime 	  :date_of_birth
      t.string		  :place_of_birth
      t.belongs_to  :position
      t.timestamps
    end
  end
end
