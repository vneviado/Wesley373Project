require 'test_helper'

class ServiceContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_contact = service_contacts(:one)
  end

  test "should get index" do
    get service_contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_service_contact_url
    assert_response :success
  end

  test "should create service_contact" do
    assert_difference('ServiceContact.count') do
      post service_contacts_url, params: { service_contact: { contact_id: @service_contact.contact_id, service_id: @service_contact.service_id } }
    end

    assert_redirected_to service_contact_url(ServiceContact.last)
  end

  test "should show service_contact" do
    get service_contact_url(@service_contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_contact_url(@service_contact)
    assert_response :success
  end

  test "should update service_contact" do
    patch service_contact_url(@service_contact), params: { service_contact: { contact_id: @service_contact.contact_id, service_id: @service_contact.service_id } }
    assert_redirected_to service_contact_url(@service_contact)
  end

  test "should destroy service_contact" do
    assert_difference('ServiceContact.count', -1) do
      delete service_contact_url(@service_contact)
    end

    assert_redirected_to service_contacts_url
  end
end
