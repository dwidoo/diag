class Batiment < ActiveRecord::Base
	has_many :pieces, dependent: :destroy
	belongs_to :mission
	validates :adresse, presence: true, length: {minimum: 5}
	validates :designation, presence: true, length: {minimum: 5}
	validates :code_postal, presence: true, length: {is: 5}
	validates :commune, presence: true, length: {minimum: 5}
end
