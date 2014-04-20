class AddNomToPieces < ActiveRecord::Migration
  def change
    add_column :pieces, :Nom, :string
  end
end
