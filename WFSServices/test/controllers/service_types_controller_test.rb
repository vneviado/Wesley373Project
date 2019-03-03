require 'test_helper'

class ServiceTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_type = service_types(:one)
  end

  test "should get index" do
    get service_types_url
    assert_response :success
  end

  test "should get new" do
    get new_service_type_url
    assert_response :success
  end

  test "should create service_type" do
    assert_difference('ServiceType.count') do
      post service_types_url, params: { service_type: { cost: @service_type.cost, created_by: @service_type.created_by, name: @service_type.name, service: @service_type.service, staff: @service_type.staff, updated_by: @service_type.updated_by } }
    end

    assert_redirected_to service_type_url(ServiceType.last)
  end

  test "should show service_type" do
    get service_type_url(@service_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_type_url(@service_type)
    assert_response :success
  end

  test "should update service_type" do
    patch service_type_url(@service_type), params: { service_type: { cost: @service_type.cost, created_by: @service_type.created_by, name: @service_type.name, service: @service_type.service, staff: @service_type.staff, updated_by: @service_type.updated_by } }
    assert_redirected_to service_type_url(@service_type)
  end

  test "should destroy service_type" do
    assert_difference('ServiceType.count', -1) do
      delete service_type_url(@service_type)
    end

    assert_redirected_to service_types_url
  end
end
