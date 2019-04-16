class ServiceLocation < ApplicationRecord
  belongs_to :service
  belongs_to :location

  validates_presence_of :service
  validates_presence_of :location


  validate :service_location_is_not_a_duplicate, on: :create


private 
  def service_location_is_not_a_duplicate
    if service_location_exists? 
      errors.add(:service_location_id, "this assignment already exists.")
    end
  end

  def service_location_exists?
    !ServiceLocation.where(service_id: self.service_id, location_id: self.location_id).empty?
  end

end
