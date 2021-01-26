class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :humidity
      t.integer :light
      t.timestamps
    end
  end
end