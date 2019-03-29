require 'test_helper'

class ServiceTypeTest < ActiveSupport::TestCase
  # Relationship Matchers
  should belong_to(:service)
  should have_one(:cost)

  # Validations
  should validate_presence_of(:name)
  should validate_presence_of(:staff)
  should validate_presence_of(:created_by)
  should validate_presence_of(:updated_by)
  should validate_presence_of(:service)

  # Context
  context "Within context" do
    setup do
      create_categories
      create_services
      create_service_types
    end

    teardown do
      destroy_service_types
      destroy_services
      destroy_categories
    end

    # Scope Testss
    should "have an alphabetical scope to order by name" do
      assert_equal [@grouptherapylevel2, @grouptherapylevel1], ServiceType.alphabetical.to_a
    end

    should "have a staff scope to order by staff type alphabetically" do
      assert_equal [@grouptherapylevel2, @grouptherapylevel1], ServiceType.staff.to_a
    end

  end
end
