require 'test_helper'

class ApplicantLicensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @applicant_license = applicant_licenses(:one)
  end

  test "should get index" do
    get applicant_licenses_url
    assert_response :success
  end

  test "should get new" do
    get new_applicant_license_url
    assert_response :success
  end

  test "should create applicant_license" do
    assert_difference('ApplicantLicense.count') do
      post applicant_licenses_url, params: { applicant_license: { applicant_id: @applicant_license.applicant_id, applicant_license_code_id: @applicant_license.applicant_license_code_id, applicant_license_status_id: @applicant_license.applicant_license_status_id } }
    end

    assert_redirected_to applicant_license_url(ApplicantLicense.last)
  end

  test "should show applicant_license" do
    get applicant_license_url(@applicant_license)
    assert_response :success
  end

  test "should get edit" do
    get edit_applicant_license_url(@applicant_license)
    assert_response :success
  end

  test "should update applicant_license" do
    patch applicant_license_url(@applicant_license), params: { applicant_license: { applicant_id: @applicant_license.applicant_id, applicant_license_code_id: @applicant_license.applicant_license_code_id, applicant_license_status_id: @applicant_license.applicant_license_status_id } }
    assert_redirected_to applicant_license_url(@applicant_license)
  end

  test "should destroy applicant_license" do
    assert_difference('ApplicantLicense.count', -1) do
      delete applicant_license_url(@applicant_license)
    end

    assert_redirected_to applicant_licenses_url
  end
end
