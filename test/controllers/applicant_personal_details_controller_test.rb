require 'test_helper'

class ApplicantPersonalDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @applicant_personal_detail = applicant_personal_details(:one)
  end

  test "should get index" do
    get applicant_personal_details_url
    assert_response :success
  end

  test "should get new" do
    get new_applicant_personal_detail_url
    assert_response :success
  end

  test "should create applicant_personal_detail" do
    assert_difference('ApplicantPersonalDetail.count') do
      post applicant_personal_details_url, params: { applicant_personal_detail: { Alt_Contact_Number: @applicant_personal_detail.Alt_Contact_Number, Application_Status: @applicant_personal_detail.Application_Status, Contact_Number: @applicant_personal_detail.Contact_Number, Criminal_Record: @applicant_personal_detail.Criminal_Record, First_Name: @applicant_personal_detail.First_Name, Middle_Name: @applicant_personal_detail.Middle_Name, Number_Of_Dependancies: @applicant_personal_detail.Number_Of_Dependancies, Skills: @applicant_personal_detail.Skills, Surname: @applicant_personal_detail.Surname, applicant_id: @applicant_personal_detail.applicant_id } }
    end

    assert_redirected_to applicant_personal_detail_url(ApplicantPersonalDetail.last)
  end

  test "should show applicant_personal_detail" do
    get applicant_personal_detail_url(@applicant_personal_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_applicant_personal_detail_url(@applicant_personal_detail)
    assert_response :success
  end

  test "should update applicant_personal_detail" do
    patch applicant_personal_detail_url(@applicant_personal_detail), params: { applicant_personal_detail: { Alt_Contact_Number: @applicant_personal_detail.Alt_Contact_Number, Application_Status: @applicant_personal_detail.Application_Status, Contact_Number: @applicant_personal_detail.Contact_Number, Criminal_Record: @applicant_personal_detail.Criminal_Record, First_Name: @applicant_personal_detail.First_Name, Middle_Name: @applicant_personal_detail.Middle_Name, Number_Of_Dependancies: @applicant_personal_detail.Number_Of_Dependancies, Skills: @applicant_personal_detail.Skills, Surname: @applicant_personal_detail.Surname, applicant_id: @applicant_personal_detail.applicant_id } }
    assert_redirected_to applicant_personal_detail_url(@applicant_personal_detail)
  end

  test "should destroy applicant_personal_detail" do
    assert_difference('ApplicantPersonalDetail.count', -1) do
      delete applicant_personal_detail_url(@applicant_personal_detail)
    end

    assert_redirected_to applicant_personal_details_url
  end
end
