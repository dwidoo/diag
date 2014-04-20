class RemoveNomPieceFromPieces < ActiveRecord::Migration
  def change
    remove_column :pieces, :NomPiece, :string
  end
end
