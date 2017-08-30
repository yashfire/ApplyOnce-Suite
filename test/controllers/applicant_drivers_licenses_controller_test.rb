require 'test_helper'

class ApplicantDriversLicensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @applicant_drivers_license = applicant_drivers_licenses(:one)
  end

  test "should get index" do
    get applicant_drivers_licenses_url
    assert_response :success
  end

  test "should get new" do
    get new_applicant_drivers_license_url
    assert_response :success
  end

  test "should create applicant_drivers_license" do
    assert_difference('ApplicantDriversLicense.count') do
      post applicant_drivers_licenses_url, params: { applicant_drivers_license: { applicant_drivers_license_code_id: @applicant_drivers_license.applicant_drivers_license_code_id, applicant_drivers_license_status_id: @applicant_drivers_license.applicant_drivers_license_status_id, applicant_id: @applicant_drivers_license.applicant_id } }
    end

    assert_redirected_to applicant_drivers_license_url(ApplicantDriversLicense.last)
  end

  test "should show applicant_drivers_license" do
    get applicant_drivers_license_url(@applicant_drivers_license)
    assert_response :success
  end

  test "should get edit" do
    get edit_applicant_drivers_license_url(@applicant_drivers_license)
    assert_response :success
  end

  test "should update applicant_drivers_license" do
    patch applicant_drivers_license_url(@applicant_drivers_license), params: { applicant_drivers_license: { applicant_drivers_license_code_id: @applicant_drivers_license.applicant_drivers_license_code_id, applicant_drivers_license_status_id: @applicant_drivers_license.applicant_drivers_license_status_id, applicant_id: @applicant_drivers_license.applicant_id } }
    assert_redirected_to applicant_drivers_license_url(@applicant_drivers_license)
  end

  test "should destroy applicant_drivers_license" do
    assert_difference('ApplicantDriversLicense.count', -1) do
      delete applicant_drivers_license_url(@applicant_drivers_license)
    end

    assert_redirected_to applicant_drivers_licenses_url
  end
end
