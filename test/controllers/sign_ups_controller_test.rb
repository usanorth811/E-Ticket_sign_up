require 'test_helper'

class SignUpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sign_up = sign_ups(:one)
  end

  test "should get index" do
    get sign_ups_url
    assert_response :success
  end

  test "should get new" do
    get new_sign_up_url
    assert_response :success
  end

  test "should create sign_up" do
    assert_difference('SignUp.count') do
      post sign_ups_url, params: { sign_up: { city: @sign_up.city, company_mailing_address: @sign_up.company_mailing_address, company_name: @sign_up.company_name, company_phone_number: @sign_up.company_phone_number, company_type: @sign_up.company_type, email: @sign_up.email, first_name: @sign_up.first_name, last_name: @sign_up.last_name, password: @sign_up.password, state: @sign_up.state, user_name: @sign_up.user_name, zip: @sign_up.zip } }
    end

    assert_redirected_to sign_up_url(SignUp.last)
  end

  test "should show sign_up" do
    get sign_up_url(@sign_up)
    assert_response :success
  end

  test "should get edit" do
    get edit_sign_up_url(@sign_up)
    assert_response :success
  end

  test "should update sign_up" do
    patch sign_up_url(@sign_up), params: { sign_up: { city: @sign_up.city, company_mailing_address: @sign_up.company_mailing_address, company_name: @sign_up.company_name, company_phone_number: @sign_up.company_phone_number, company_type: @sign_up.company_type, email: @sign_up.email, first_name: @sign_up.first_name, last_name: @sign_up.last_name, password: @sign_up.password, state: @sign_up.state, user_name: @sign_up.user_name, zip: @sign_up.zip } }
    assert_redirected_to sign_up_url(@sign_up)
  end

  test "should destroy sign_up" do
    assert_difference('SignUp.count', -1) do
      delete sign_up_url(@sign_up)
    end

    assert_redirected_to sign_ups_url
  end
end
