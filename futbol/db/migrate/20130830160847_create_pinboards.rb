class CreatePinboards < ActiveRecord::Migration
  def change
    create_table :pinboards do |t|
      t.string  	:name
      t.text 		:description
      t.integer		:player_id
      t.integer		:user_id
      t.timestamps
    end
  end
end
