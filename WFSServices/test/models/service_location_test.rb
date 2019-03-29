require 'test_helper'

class ServiceLocationTest < ActiveSupport::TestCase
  # Relationship Matcher
  should belong_to(:service)
  should belong_to(:location)

  # Validations
  should validate_presence_of(:service)
  should validate_presence_of(:location)
end
