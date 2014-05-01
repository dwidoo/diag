class AddMissionIdToBatiments < ActiveRecord::Migration
  def change
    add_column :batiments, :mission_id, :integer
  end
end
