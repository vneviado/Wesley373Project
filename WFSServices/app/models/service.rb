class Service < ApplicationRecord
    # Relationships
    belongs_to :category

    has_many :service_contacts
    has_many :service_locations
    has_many :locations, through: :service_locations
    has_many :contacts, through: :service_contacts
    has_many :service_types
    has_many :comments

    # Validations
    validates_presence_of :name
    validates_presence_of :category

    # Scopes
    scope :alphabetical, -> { order( 'name' ) }
    scope :search, ->(term) { Service.joins(:category).where('services.name LIKE ? OR categories.name LIKE ?', "%#{term}%", "%#{term}%") }
end