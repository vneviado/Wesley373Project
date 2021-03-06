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
    validates_presence_of :name, :category, :description, :level_of_care, :array_of_services, :microenterprise
    validates_uniqueness_of :name

    # Scopes
    scope :alphabetical, -> { order( 'name' ) }
    scope :for_lvl_arr, ->(lvl, arr) { where("level_of_care = ? and array_of_services = ?", lvl, arr) }
    scope :search, ->(term) { Service.joins(:category).where('services.name LIKE ? 
    OR categories.name LIKE ? OR services.description LIKE ? OR services.philosophy LIKE ? 
    OR services.level_of_care LIKE ?', "%#{term}%", "%#{term}%", "%#{term}%", "%#{term}%", "%#{term}%") }
end