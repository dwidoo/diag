json.array!(@missions) do |mission|
  json.extract! mission, :id, :num_dossier, :date_reperage, :heure_reperage, :duree_reperage, :top_amiante, :perimetre_reperage, :dateheure_visite, :deadline_rapport, :date_emission_rapport
  json.url mission_url(mission, format: :json)
end
