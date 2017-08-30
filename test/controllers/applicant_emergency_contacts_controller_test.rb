require 'test_helper'

class ApplicantEmergencyContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @applicant_emergency_contact = applicant_emergency_contacts(:one)
  end

  test "should get index" do
    get applicant_emergency_contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_applicant_emergency_contact_url
    assert_response :success
  end

  test "should create applicant_emergency_contact" do
    assert_difference('ApplicantEmergencyContact.count') do
      post applicant_emergency_contacts_url, params: { applicant_emergency_contact: { Emergency_Contact_Name: @applicant_emergency_contact.Emergency_Contact_Name, Emergency_Contact_Number: @applicant_emergency_contact.Emergency_Contact_Number, Emergency_Contact_Relationship: @applicant_emergency_contact.Emergency_Contact_Relationship, applicant_id: @applicant_emergency_contact.applicant_id } }
    end

    assert_redirected_to applicant_emergency_contact_url(ApplicantEmergencyContact.last)
  end

  test "should show applicant_emergency_contact" do
    get applicant_emergency_contact_url(@applicant_emergency_contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_applicant_emergency_contact_url(@applicant_emergency_contact)
    assert_response :success
  end

  test "should update applicant_emergency_contact" do
    patch applicant_emergency_contact_url(@applicant_emergency_contact), params: { applicant_emergency_contact: { Emergency_Contact_Name: @applicant_emergency_contact.Emergency_Contact_Name, Emergency_Contact_Number: @applicant_emergency_contact.Emergency_Contact_Number, Emergency_Contact_Relationship: @applicant_emergency_contact.Emergency_Contact_Relationship, applicant_id: @applicant_emergency_contact.applicant_id } }
    assert_redirected_to applicant_emergency_contact_url(@applicant_emergency_contact)
  end

  test "should destroy applicant_emergency_contact" do
    assert_difference('ApplicantEmergencyContact.count', -1) do
      delete applicant_emergency_contact_url(@applicant_emergency_contact)
    end

    assert_redirected_to applicant_emergency_contacts_url
  end
end
