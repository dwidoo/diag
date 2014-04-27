class CreateDiagnosticAmiantes < ActiveRecord::Migration
  def change
    create_table :diagnostic_amiantes do |t|
      t.text :docs
      t.string :accompagnateur
      t.text :commentaires
      t.text :conclusions

      t.timestamps
    end
  end
end
