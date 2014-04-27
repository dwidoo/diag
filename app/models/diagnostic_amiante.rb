class DiagnosticAmiante < ActiveRecord::Base
	belongs_to :mission
	has_many :amiantes
end
