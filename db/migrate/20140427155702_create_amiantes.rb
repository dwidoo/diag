class CreateAmiantes < ActiveRecord::Migration
  def change
    create_table :amiantes do |t|
      t.string :identifiant
      t.string :composant
      t.string :partie_a_sonder
      t.string :description
      t.string :conclusion
      t.string :commentaires

      t.timestamps
    end
  end
end
