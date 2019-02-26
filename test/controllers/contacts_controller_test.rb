require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact = contacts(:one)
  end

  test "should get index" do
    get contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_url
    assert_response :success
  end

  test "should create contact" do
    assert_difference('Contact.count') do
      post contacts_url, params: { contact: { city_1: @contact.city_1, city_2: @contact.city_2, created_by: @contact.created_by, name: @contact.name, phone_number: @contact.phone_number, street_1: @contact.street_1, street_2: @contact.street_2, updated_by: @contact.updated_by, work_number: @contact.work_number, zip_1: @contact.zip_1, zip_2: @contact.zip_2 } }
    end

    assert_redirected_to contact_url(Contact.last)
  end

  test "should show contact" do
    get contact_url(@contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_url(@contact)
    assert_response :success
  end

  test "should update contact" do
    patch contact_url(@contact), params: { contact: { city_1: @contact.city_1, city_2: @contact.city_2, created_by: @contact.created_by, name: @contact.name, phone_number: @contact.phone_number, street_1: @contact.street_1, street_2: @contact.street_2, updated_by: @contact.updated_by, work_number: @contact.work_number, zip_1: @contact.zip_1, zip_2: @contact.zip_2 } }
    assert_redirected_to contact_url(@contact)
  end

  test "should destroy contact" do
    assert_difference('Contact.count', -1) do
      delete contact_url(@contact)
    end

    assert_redirected_to contacts_url
  end
end
