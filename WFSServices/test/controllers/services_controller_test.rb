require 'test_helper'

class ServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service = services(:one)
  end

  test "should get index" do
    get services_url
    assert_response :success
  end

  test "should get new" do
    get new_service_url
    assert_response :success
  end

  test "should create service" do
    assert_difference('Service.count') do
      post services_url, params: { service: { average_length_of_stay: @service.average_length_of_stay, category: @service.category, contact: @service.contact, created_by: @service.created_by, description: @service.description, entrance_criteria: @service.entrance_criteria, exclusion_criteria: @service.exclusion_criteria, exit_criteria: @service.exit_criteria, level_of_care: @service.level_of_care, location: @service.location, matching_elements: @service.matching_elements, name: @service.name, philosophy: @service.philosophy, referral_process: @service.referral_process, updated_by: @service.updated_by } }
    end

    assert_redirected_to service_url(Service.last)
  end

  test "should show service" do
    get service_url(@service)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_url(@service)
    assert_response :success
  end

  test "should update service" do
    patch service_url(@service), params: { service: { average_length_of_stay: @service.average_length_of_stay, category: @service.category, contact: @service.contact, created_by: @service.created_by, description: @service.description, entrance_criteria: @service.entrance_criteria, exclusion_criteria: @service.exclusion_criteria, exit_criteria: @service.exit_criteria, level_of_care: @service.level_of_care, location: @service.location, matching_elements: @service.matching_elements, name: @service.name, philosophy: @service.philosophy, referral_process: @service.referral_process, updated_by: @service.updated_by } }
    assert_redirected_to service_url(@service)
  end

  test "should destroy service" do
    assert_difference('Service.count', -1) do
      delete service_url(@service)
    end

    assert_redirected_to services_url
  end
end
