json.array!(@diagnostiqueurs) do |diagnostiqueur|
  json.extract! diagnostiqueur, :id, :nom, :prenom, :raison_sociale, :num_certif, :validite_certif, :obtention_certif, :adresse, :code_postal, :tel, :email, :num_tva, :siret, :nom_assureur, :coordonnees_assureur, :num_assurance, :validite_assurance
  json.url diagnostiqueur_url(diagnostiqueur, format: :json)
end
