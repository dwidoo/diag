class Piece < ActiveRecord::Base
  belongs_to :batiment
  assignable_values_for :nom do
    ['Entrée', 'Toilettes', 'Cuisine',	'Dégagement',	'Rangement',	'Séjour',	'Cave',	'Salle de bain',	'Chambre']
	end
end
