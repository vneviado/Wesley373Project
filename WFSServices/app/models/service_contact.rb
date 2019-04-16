class ServiceContact < ApplicationRecord
  belongs_to :service
  belongs_to :contact

  validates_presence_of :service
  validates_presence_of :contact

  validate :service_contact_is_not_a_duplicate, on: :create


private 
  def service_contact_is_not_a_duplicate
    if service_contact_exists? 
      errors.add(:service_contact_id, "this assignment already exists.")
    end
  end

  def service_contact_exists?
    !ServiceContact.where(service_id: self.service_id, contact_id: self.contact_id).empty?
  end
end
