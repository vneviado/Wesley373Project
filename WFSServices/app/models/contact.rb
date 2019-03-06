class Contact < ApplicationRecord
  #Relationships
  has_many :services

  #Validations
  validates_presence_of :first_name, :last_name, :work_number, :phone_number, :street_1, :city_1, :zipcode_1
  validates :work_number, with: {}
  validates :phone_number, with: {}
  validates :zipcode_1, :zipcode_2, length: { is: 5 }

  #Scopes
  #Methods
end
