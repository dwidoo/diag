class AddNomPieceToPieces < ActiveRecord::Migration
  def change
    add_column :pieces, :NomPiece, :string
  end
end
