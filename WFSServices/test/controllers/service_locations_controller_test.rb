require 'test_helper'

class ServiceLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_location = service_locations(:one)
  end

  test "should get index" do
    get service_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_service_location_url
    assert_response :success
  end

  test "should create service_location" do
    assert_difference('ServiceLocation.count') do
      post service_locations_url, params: { service_location: { location_id: @service_location.location_id, service_id: @service_location.service_id } }
    end

    assert_redirected_to service_location_url(ServiceLocation.last)
  end

  test "should show service_location" do
    get service_location_url(@service_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_location_url(@service_location)
    assert_response :success
  end

  test "should update service_location" do
    patch service_location_url(@service_location), params: { service_location: { location_id: @service_location.location_id, service_id: @service_location.service_id } }
    assert_redirected_to service_location_url(@service_location)
  end

  test "should destroy service_location" do
    assert_difference('ServiceLocation.count', -1) do
      delete service_location_url(@service_location)
    end

    assert_redirected_to service_locations_url
  end
end
