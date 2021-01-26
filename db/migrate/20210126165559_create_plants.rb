class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :species
      t.integer :light_needs
      t.integer :humidity_needs
      t.integer :water_frequency
      t.date :last_watering
      t.date :last_fertilization
      t.string :comments
      t.timestamps
    end
  end
end