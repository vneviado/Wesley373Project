class Service < ApplicationRecord
    # Relationship
    has_many :service_contacts
    has_many :service_locations
    has_many :locations, through: :service_locations
    has_many :contacts, through: :service_contacts
    belongs_to :category

    has_many :service_types

    # Validation
    validates_presence_of :name
    #validates_presence_of :contact
    #validates_presence_of :location
    validates_presence_of :category
    #validates_presence_of :service_type

    # Scopes
    scope :alphabetical, -> { order( 'name' ) }
    scope :search, ->(term) { Service.joins(:category).where('services.name LIKE ? OR categories.name LIKE ?', "%#{term}%", "%#{term}%") }
end
