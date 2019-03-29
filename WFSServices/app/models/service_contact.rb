class ServiceContact < ApplicationRecord
  belongs_to :service
  belongs_to :contact

  validates_presence_of :service
  validates_presence_of :contact
end
