class ChangeRoomIdToSpaceIdInPlants < ActiveRecord::Migration[6.0]
  def change
    rename_column :plants, :room_id, :space_id
  end
end
