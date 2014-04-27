class Amiante < ActiveRecord::Base
	belongs_to :diagnostic_amiante, :element
end
