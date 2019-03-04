class ServiceType < ApplicationRecord
	belongs_to :service
	# has_one :cost

	validates_presence_of :name
	validates_presence_of :staff
	validates_presence_of :created_by
	validates_presence_of :updated_by

	scope :name_alphabetical, -> { order('name') }
	scope :staff, -> { order('staff') }
end
