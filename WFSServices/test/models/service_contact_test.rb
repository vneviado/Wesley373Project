require 'test_helper'

class ServiceContactTest < ActiveSupport::TestCase
  # Relationship Matcher
  should belong_to(:service)
  should belong_to(:contact)

  #Validations
  should validate_presence_of(:service)
  should validate_presence_of(:contact)
end
