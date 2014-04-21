class Element < ActiveRecord::Base
  belongs_to :piece
  assignable_values_for :nom do
    ['Sol','Murs','Plafond','Plinthes','Porte','Fenêtre',	'Porte d\'entrée','Fenêtre avec volets']
	end
end
