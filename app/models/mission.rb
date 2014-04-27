class Mission < ActiveRecord::Base
	belongs_to :diagnostiqueur
	has_one :batiment
end
