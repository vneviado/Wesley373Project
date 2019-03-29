require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  # Relationship Matchers
  should have_many(:service_contacts)
  should have_many(:services).through(:service_contacts)

  # Validations
  should validate_presence_of(:first_name)
  should validate_presence_of(:last_name)
  should validate_presence_of(:work_number)
  should validate_presence_of(:phone_number)
  should validate_presence_of(:street_1)
  should validate_presence_of(:city_1)
  should validate_presence_of(:zipcode_1)

  should allow_value("412-799-3567").for(:phone_number)
  should allow_value("2341234567").for(:phone_number)
  should_not allow_value(100).for(:phone_number)
  should_not allow_value("bad").for(:phone_number)
  should_not allow_value("(412) 893-4567)").for(:phone_number)
  should_not allow_value("(123)4567890").for(:phone_number)

  should allow_value("412-799-3567").for(:work_number)
  should allow_value("2341234567").for(:work_number)
  should_not allow_value(100).for(:work_number)
  should_not allow_value("bad").for(:work_number)
  should_not allow_value("(412) 893-4567)").for(:work_number)
  should_not allow_value("(123)4567890").for(:work_number)

  should allow_value("12345").for(:zipcode_1)
  should_not allow_value("123456").for(:zipcode_1)
  should_not allow_value("bad").for(:zipcode_1)
  should_not allow_value("1").for(:zipcode_1)

  should allow_value("12345").for(:zipcode_2)
  should_not allow_value("123456").for(:zipcode_2)
  should_not allow_value("bad").for(:zipcode_2)
  should_not allow_value("1").for(:zipcode_2)

  # Context
  context "Within context" do
    setup do
      create_contacts
    end

    teardown do
      destroy_contacts
    end
    
    should "shows name as first_name last_name" do
      assert_equal "John Smith", @john.name
      assert_equal "Tom Smith", @tom.name
    end  
     
  end
end
