class RenameRoomToSpace < ActiveRecord::Migration[6.0]
  def change
    rename_table :rooms, :spaces
  end
end
