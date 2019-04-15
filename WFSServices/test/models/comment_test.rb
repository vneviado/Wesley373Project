require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  should belong_to(:service)

  should validate_presence_of(:date_created)
  should validate_presence_of(:content)

  # Context
  context "Within context" do
    setup do
      create_services
      create_comments
    end

    teardown do
      destroy_comments
      destroy_services
    end

    # Scope Tests
    should "have a chronological scope to order by creation date" do
      assert_equal [@comment2, @comment1], Comment.chronological.to_a
    end
end
