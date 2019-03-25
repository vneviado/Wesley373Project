require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # Relationship Matchers
  should have_many(:services)

  # Validation Matcher
  should validate_presence_of(:name)
  
  # Context
  context "Within context" do
    setup do
      create_categories
    end

    teardown do
      destroy_categories
    end

    # Scope Testss
    should "have an alphabetical scope to order by name" do
      assert_equal [@autism, @justice], Category.alphabetical.to_a
    end

  end

end
