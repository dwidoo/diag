class CreateBatiments < ActiveRecord::Migration
  def change
    create_table :batiments do |t|
      t.string :adresse
      t.string :designation
      t.string :code_postal
      t.string :commune

      t.timestamps
    end
  end
end
