require 'test_helper'

class ApplicantAddressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @applicant_address = applicant_addresses(:one)
  end

  test "should get index" do
    get applicant_addresses_url
    assert_response :success
  end

  test "should get new" do
    get new_applicant_address_url
    assert_response :success
  end

  test "should create applicant_address" do
    assert_difference('ApplicantAddress.count') do
      post applicant_addresses_url, params: { applicant_address: { Address_Line_1: @applicant_address.Address_Line_1, Address_Line_2: @applicant_address.Address_Line_2, Address_Line_3: @applicant_address.Address_Line_3, Postal_Code: @applicant_address.Postal_Code, applicant_id: @applicant_address.applicant_id } }
    end

    assert_redirected_to applicant_address_url(ApplicantAddress.last)
  end

  test "should show applicant_address" do
    get applicant_address_url(@applicant_address)
    assert_response :success
  end

  test "should get edit" do
    get edit_applicant_address_url(@applicant_address)
    assert_response :success
  end

  test "should update applicant_address" do
    patch applicant_address_url(@applicant_address), params: { applicant_address: { Address_Line_1: @applicant_address.Address_Line_1, Address_Line_2: @applicant_address.Address_Line_2, Address_Line_3: @applicant_address.Address_Line_3, Postal_Code: @applicant_address.Postal_Code, applicant_id: @applicant_address.applicant_id } }
    assert_redirected_to applicant_address_url(@applicant_address)
  end

  test "should destroy applicant_address" do
    assert_difference('ApplicantAddress.count', -1) do
      delete applicant_address_url(@applicant_address)
    end

    assert_redirected_to applicant_addresses_url
  end
end
