json.array!(@diagnostic_amiantes) do |diagnostic_amiante|
  json.extract! diagnostic_amiante, :id, :docs, :accompagnateur, :commentaires, :conclusions
  json.url diagnostic_amiante_url(diagnostic_amiante, format: :json)
end
