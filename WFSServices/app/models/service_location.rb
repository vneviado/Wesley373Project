class ServiceLocation < ApplicationRecord
  belongs_to :service
  belongs_to :location

  validates_presence_of :service
  validates_presence_of :location

end
