class RemoveNomFromPieces < ActiveRecord::Migration
  def change
    remove_column :pieces, :nom, :string
  end
end
