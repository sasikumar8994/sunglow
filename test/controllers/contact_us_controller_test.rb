require 'test_helper'

class ContactUsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact_u = contact_us(:one)
  end

  test "should get index" do
    get contact_us_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_u_url
    assert_response :success
  end

  test "should create contact_u" do
    assert_difference('ContactU.count') do
      post contact_us_url, params: { contact_u: { company: @contact_u.company, email: @contact_u.email, first_name: @contact_u.first_name, hours_of_operation: @contact_u.hours_of_operation, last_name: @contact_u.last_name, number_of_fixtures: @contact_u.number_of_fixtures, phone: @contact_u.phone } }
    end

    assert_redirected_to contact_u_url(ContactU.last)
  end

  test "should show contact_u" do
    get contact_u_url(@contact_u)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_u_url(@contact_u)
    assert_response :success
  end

  test "should update contact_u" do
    patch contact_u_url(@contact_u), params: { contact_u: { company: @contact_u.company, email: @contact_u.email, first_name: @contact_u.first_name, hours_of_operation: @contact_u.hours_of_operation, last_name: @contact_u.last_name, number_of_fixtures: @contact_u.number_of_fixtures, phone: @contact_u.phone } }
    assert_redirected_to contact_u_url(@contact_u)
  end

  test "should destroy contact_u" do
    assert_difference('ContactU.count', -1) do
      delete contact_u_url(@contact_u)
    end

    assert_redirected_to contact_us_url
  end
end
