class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.string :nom
      t.integer :numero
      t.references :batiment, index: true

      t.timestamps
    end
  end
end
