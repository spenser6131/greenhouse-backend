class RenamePlantsNeedsToRequirements < ActiveRecord::Migration[6.0]
  def change
    rename_column :plants, :humidity_needs, :humidity_requirement
    rename_column :plants, :light_needs, :light_requirement
  end
end
