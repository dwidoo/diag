class CreateDiagnostiqueurs < ActiveRecord::Migration
  def change
    create_table :diagnostiqueurs do |t|
      t.string :nom
      t.string :prenom
      t.string :raison_sociale
      t.string :num_certif
      t.date :validite_certif
      t.date :obtention_certif
      t.string :adresse
      t.string :code_postal
      t.string :tel
      t.string :email
      t.string :num_tva
      t.string :siret
      t.string :nom_assureur
      t.text :coordonnees_assureur
      t.string :num_assurance
      t.date :validite_assurance

      t.timestamps
    end
  end
end
