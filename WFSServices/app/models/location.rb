class Location < ApplicationRecord
  #Relationships
  has_many :services

  #Validations
  validates_presence_of :name, :phone_number, :street, :city, :zipcode
  validates :phone_number, with: { /^\(?(\d{3})\)?[ -.]?(\d{3})[-.]?(\d{4})$/ ,
    message: "Valid phone numbers only" }
  validates :zipcode, length: { is: 5 }
  validates :zipcode, with: { /^[0-9]{5}(?:-[0-9]{4})?$/ }

  #Scopes
  #Methods
end
