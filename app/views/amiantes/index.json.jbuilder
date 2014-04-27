json.array!(@amiantes) do |amiante|
  json.extract! amiante, :id, :identifiant, :composant, :partie_a_sonder, :description, :conclusion, :commentaires
  json.url amiante_url(amiante, format: :json)
end
