class ServiceContact < ApplicationRecord
  belongs_to :service
  belongs_to :contact
end
