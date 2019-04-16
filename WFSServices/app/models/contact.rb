class Contact < ApplicationRecord
  #Relationships
  has_many :service_contacts
  has_many :services, through: :service_contacts

  #Validations

  validates_presence_of :first_name, :last_name, :work_number, :phone_number, :street_1, :city_1, :zipcode_1
  #validates :work_number, :phone_number, with: /^\(?(\d{3})\)?[ -.]?(\d{3})[-.]?(\d{4})$/, message: "Valid phone numbers only"

  validates_format_of :work_number, with: /\A(\d{10}|\(?\d{3}\)?[-. ]\d{3}[-.]\d{4})\z/, message: "should be 10 digits (area code needed) and delimited with dashes only"
  validates_format_of :phone_number, with: /\A(\d{10}|\(?\d{3}\)?[-. ]\d{3}[-.]\d{4})\z/, message: "should be 10 digits (area code needed) and delimited with dashes only"

  #validates :work_number, with: {}
  #validates :phone_number, with: {}

  #validates :zipcode_1, :zipcode_2, length: { is: 5 }
  #validates :zipcode_1, :zipcode_2, with: /^[0-9]{5}(?:-[0-9]{4})?$/

  validates_format_of :zipcode_1, with: /\A\d{5}\z/, message: "should be five digits long", allow_blank: true
  validates_format_of :zipcode_2, with: /\A\d{5}\z/, message: "should be five digits long", allow_blank: true
  
  #Scopes
  scope :search, ->(term) { where('first_name LIKE ? OR last_name LIKE ?', "#{term}%", "#{term}%") }
  scope :alphabetical, -> { order('first_name', 'last_name') }
  
  #Methods
  def name
    first_name + ' ' + last_name
  end
  
end
