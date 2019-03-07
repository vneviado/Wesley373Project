class Location < ApplicationRecord
  #Relationships
  has_many :services

  #Validations
  validates_presence_of :name, :phone_number, :street, :city, :zipcode
  #validates :phone_number, with: /^\(?(\d{3})\)?[ -.]?(\d{3})[-.]?(\d{4})$/, message: "Valid phone numbers only"
  #validates :zipcode, length: { is: 5 }
  validates_format_of :phone_number, with: /\A(\d{10}|\(?\d{3}\)?[-. ]\d{3}[-.]\d{4})\z/, message: "should be 10 digits (area code needed) and delimited with dashes only"
  validates_format_of :zipcode, with: /\A\d{5}\z/, message: "should be five digits long", allow_blank: true

  #Scopes
  #Methods
end
