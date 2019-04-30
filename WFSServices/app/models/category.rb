class Category < ApplicationRecord
	has_many :services
	validates_presence_of :name
	validates_uniqueness_of :name

	scope :alphabetical, -> { order('name') }
end