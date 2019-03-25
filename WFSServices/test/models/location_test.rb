require 'test_helper'

class LocationTest < ActiveSupport::TestCase
	
	should have_many(:service_locations)
	should have_many(:services).through(:service_locations)
	puts("relations validated")

	should validate_presence_of(:name)
	should validate_presence_of(:phone_number)
	should validate_presence_of(:street)
	should validate_presence_of(:city)
	should validate_presence_of(:zipcode)
	puts("presence validated")

  	should allow_value("412-799-3567").for(:phone_number)
  	should allow_value("2341234567").for(:phone_number)
  	should_not allow_value(100).for(:phone_number)
  	should_not allow_value("bad").for(:phone_number)
  	should_not allow_value("(412) 893-4567)").for(:phone_number)
  	should_not allow_value("(123)4567890").for(:phone_number)
  	puts("phone number validated")

  	should allow_value("12345").for(:zipcode)
  	should allow_value("67373").for(:zipcode)
  	should_not allow_value(100).for(:zipcode)
  	should_not allow_value(152323).for(:zipcode)
  	should_not allow_value("").for(:zipcode)
  	should_not allow_value("L2R7C3").for(:zipcode)
  	puts("zipcode validated")  	

end
