class Service < ApplicationRecord
    #Relationship
    has_many :contact
    has_many :service_type
    has_many :location
    belongs_to :category

    #Validation
    validates_presence_of :name
    validates_presence_of :contact
    validates_presence_of :location
    validates_presence_of :category
    validates_presence_of :service_type

    #Scopes
    scope :alphabetical, -> { order( 'name' ) }
    scope :search, ->(term) { Service.joins(:category).where('name LIKE ? OR category LIKE ?', "%#{term}%", "%#{term}%") }
end
