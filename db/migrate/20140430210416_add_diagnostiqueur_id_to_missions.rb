class AddDiagnostiqueurIdToMissions < ActiveRecord::Migration
  def change
    add_column :missions, :diagnostiqueur_id, :integer
  end
end
