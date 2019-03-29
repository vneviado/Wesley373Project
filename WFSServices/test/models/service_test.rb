require 'test_helper'

class ServiceTest < ActiveSupport::TestCase
  # Relationship matchers
  should have_many(:service_contacts)
  should have_many(:service_locations)
  should have_many(:locations).through(:service_locations)
  should have_many(:contacts).through(:service_contacts)
  should belong_to(:category)

  # Validation matchers
  should validate_presence_of(:name)
  should validate_presence_of(:category)

  # Context
  context "Within context" do
    setup do
      create_categories
      create_services
    end

    teardown do
      destroy_services
      destroy_categories
    end

    # Scope Testss
    should "have an alphabetical scope to order by name" do
      assert_equal [@beekind, @grouptherapy], Service.alphabetical.to_a
    end

    should "have a search scope that searches by service names and categories" do
      assert_equal [], Service.search("hello").to_a
      assert_equal [@beekind], Service.search("bee").to_a
      assert_equal [@beekind], Service.search("Bee").to_a
      assert_equal [@beekind], Service.search("BEE").to_a
      assert_equal [@grouptherapy], Service.search("autism").to_a
      assert_equal [@beekind], Service.search("justice").to_a
    end

  end
end
