class CreateElements < ActiveRecord::Migration
  def change
    create_table :elements do |t|
      t.string :nom
      t.references :piece, index: true

      t.timestamps
    end
  end
end
