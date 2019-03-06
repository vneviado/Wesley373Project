class Contact < ApplicationRecord
  #Relationships
  has_many :services

  #Validations
  validates_presence_of :name, :work_number, :phone_number, :street_1, :city_1, :zipcode_1
  validates :work_number, :phone_number, with: { /^\(?(\d{3})\)?[ -.]?(\d{3})[-.]?(\d{4})$/ ,
    message: "Valid phone numbers only" }
  validates :zipcode_1, :zipcode_2, length: { is: 5 }
  validates :zipcode_1, :zipcode_2, with: { /^[0-9]{5}(?:-[0-9]{4})?$/ }

  #Scopes
  #Methods
end
