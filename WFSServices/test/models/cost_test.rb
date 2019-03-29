require 'test_helper'

class CostTest < ActiveSupport::TestCase
  # Relationship Matcher
  should belong_to(:service_type)

  # Validation 
  should validate_presence_of(:service_type)
end
