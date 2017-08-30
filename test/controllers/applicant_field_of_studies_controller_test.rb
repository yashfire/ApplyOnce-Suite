require 'test_helper'

class ApplicantFieldOfStudiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @applicant_field_of_study = applicant_field_of_studies(:one)
  end

  test "should get index" do
    get applicant_field_of_studies_url
    assert_response :success
  end

  test "should get new" do
    get new_applicant_field_of_study_url
    assert_response :success
  end

  test "should create applicant_field_of_study" do
    assert_difference('ApplicantFieldOfStudy.count') do
      post applicant_field_of_studies_url, params: { applicant_field_of_study: { End_date: @applicant_field_of_study.End_date, Field_Of_Study: @applicant_field_of_study.Field_Of_Study, Start_Date: @applicant_field_of_study.Start_Date, applicant_id: @applicant_field_of_study.applicant_id, applicant_qual_id: @applicant_field_of_study.applicant_qual_id, applicant_qual_status_id: @applicant_field_of_study.applicant_qual_status_id, applicant_university_id: @applicant_field_of_study.applicant_university_id } }
    end

    assert_redirected_to applicant_field_of_study_url(ApplicantFieldOfStudy.last)
  end

  test "should show applicant_field_of_study" do
    get applicant_field_of_study_url(@applicant_field_of_study)
    assert_response :success
  end

  test "should get edit" do
    get edit_applicant_field_of_study_url(@applicant_field_of_study)
    assert_response :success
  end

  test "should update applicant_field_of_study" do
    patch applicant_field_of_study_url(@applicant_field_of_study), params: { applicant_field_of_study: { End_date: @applicant_field_of_study.End_date, Field_Of_Study: @applicant_field_of_study.Field_Of_Study, Start_Date: @applicant_field_of_study.Start_Date, applicant_id: @applicant_field_of_study.applicant_id, applicant_qual_id: @applicant_field_of_study.applicant_qual_id, applicant_qual_status_id: @applicant_field_of_study.applicant_qual_status_id, applicant_university_id: @applicant_field_of_study.applicant_university_id } }
    assert_redirected_to applicant_field_of_study_url(@applicant_field_of_study)
  end

  test "should destroy applicant_field_of_study" do
    assert_difference('ApplicantFieldOfStudy.count', -1) do
      delete applicant_field_of_study_url(@applicant_field_of_study)
    end

    assert_redirected_to applicant_field_of_studies_url
  end
end
