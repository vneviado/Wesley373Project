class Location < ApplicationRecord
  #Relationships
  has_many :service_locations
  has_many :services, through: :service_locations

  #photo uploader
  mount_uploader :photo, PhotoUploader

  #Validations
  validates_presence_of :name, :phone_number
  #validates :phone_number, with: /^\(?(\d{3})\)?[ -.]?(\d{3})[-.]?(\d{4})$/, message: "Valid phone numbers only"
  #validates :zipcode, length: { is: 5 }
  validates_format_of :phone_number, with: /\A(\d{10}|\(?\d{3}\)?[-. ]\d{3}[-.]\d{4})\z/, message: "should be 10 digits (area code needed) and delimited with dashes only"
  validates_format_of :zipcode, with: /\A\d{5}\z/, message: "should be five digits long", allow_blank: true

  #Scopes
  scope :search, ->(term) { where('name LIKE ? OR city LIKE ?', "%#{term}%", "%#{term}%") }
  scope :alphabetical, -> { order( 'name' ) }

  #Methods
  def self.for_service(service)
    service.locations.to_a
  end

end
