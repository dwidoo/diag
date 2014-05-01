class Mission < ActiveRecord::Base
	belongs_to :diagnostiqueur
	has_one :batiment
	has_one :diagnostic_amiante
end
