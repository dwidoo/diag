class AddCommuneToDiagnostiqueurs < ActiveRecord::Migration
  def change
    add_column :diagnostiqueurs, :commune, :string
  end
end
