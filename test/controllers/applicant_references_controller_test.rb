require 'test_helper'

class ApplicantReferencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @applicant_reference = applicant_references(:one)
  end

  test "should get index" do
    get applicant_references_url
    assert_response :success
  end

  test "should get new" do
    get new_applicant_reference_url
    assert_response :success
  end

  test "should create applicant_reference" do
    assert_difference('ApplicantReference.count') do
      post applicant_references_url, params: { applicant_reference: { Contact_Number: @applicant_reference.Contact_Number, Email_address: @applicant_reference.Email_address, Reference_Name: @applicant_reference.Reference_Name, Relationship: @applicant_reference.Relationship, applicant_id: @applicant_reference.applicant_id } }
    end

    assert_redirected_to applicant_reference_url(ApplicantReference.last)
  end

  test "should show applicant_reference" do
    get applicant_reference_url(@applicant_reference)
    assert_response :success
  end

  test "should get edit" do
    get edit_applicant_reference_url(@applicant_reference)
    assert_response :success
  end

  test "should update applicant_reference" do
    patch applicant_reference_url(@applicant_reference), params: { applicant_reference: { Contact_Number: @applicant_reference.Contact_Number, Email_address: @applicant_reference.Email_address, Reference_Name: @applicant_reference.Reference_Name, Relationship: @applicant_reference.Relationship, applicant_id: @applicant_reference.applicant_id } }
    assert_redirected_to applicant_reference_url(@applicant_reference)
  end

  test "should destroy applicant_reference" do
    assert_difference('ApplicantReference.count', -1) do
      delete applicant_reference_url(@applicant_reference)
    end

    assert_redirected_to applicant_references_url
  end
end
