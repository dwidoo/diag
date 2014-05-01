class AddMissionIdToDiagnosticAmiantes < ActiveRecord::Migration
  def change
    add_column :diagnostic_amiantes, :mission_id, :integer
  end
end
