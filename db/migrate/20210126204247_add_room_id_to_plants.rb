class AddRoomIdToPlants < ActiveRecord::Migration[6.0]
  def change
    add_column :plants, :room_id, :integer
  end
end
