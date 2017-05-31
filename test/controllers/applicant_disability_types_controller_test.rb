require 'test_helper'

class ApplicantDisabilityTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @applicant_disability_type = applicant_disability_types(:one)
  end

  test "should get index" do
    get applicant_disability_types_url
    assert_response :success
  end

  test "should get new" do
    get new_applicant_disability_type_url
    assert_response :success
  end

  test "should create applicant_disability_type" do
    assert_difference('ApplicantDisabilityType.count') do
      post applicant_disability_types_url, params: { applicant_disability_type: { Disability_Type: @applicant_disability_type.Disability_Type, applicant_disability_id: @applicant_disability_type.applicant_disability_id, applicant_id: @applicant_disability_type.applicant_id } }
    end

    assert_redirected_to applicant_disability_type_url(ApplicantDisabilityType.last)
  end

  test "should show applicant_disability_type" do
    get applicant_disability_type_url(@applicant_disability_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_applicant_disability_type_url(@applicant_disability_type)
    assert_response :success
  end

  test "should update applicant_disability_type" do
    patch applicant_disability_type_url(@applicant_disability_type), params: { applicant_disability_type: { Disability_Type: @applicant_disability_type.Disability_Type, applicant_disability_id: @applicant_disability_type.applicant_disability_id, applicant_id: @applicant_disability_type.applicant_id } }
    assert_redirected_to applicant_disability_type_url(@applicant_disability_type)
  end

  test "should destroy applicant_disability_type" do
    assert_difference('ApplicantDisabilityType.count', -1) do
      delete applicant_disability_type_url(@applicant_disability_type)
    end

    assert_redirected_to applicant_disability_types_url
  end
end
