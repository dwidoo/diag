class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.integer :num_dossier
      t.date :date_reperage
      t.time :heure_reperage
      t.time :duree_reperage
      t.boolean :top_amiante
      t.text :perimetre_reperage
      t.datetime :dateheure_visite
      t.date :deadline_rapport
      t.date :date_emission_rapport

      t.timestamps
    end
  end
end
