require 'test_helper'

class ApplicantPersonQualificationUniversityFieldOfStudiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @applicant_person_qualification_university_field_of_study = applicant_person_qualification_university_field_of_studies(:one)
  end

  test "should get index" do
    get applicant_person_qualification_university_field_of_studies_url
    assert_response :success
  end

  test "should get new" do
    get new_applicant_person_qualification_university_field_of_study_url
    assert_response :success
  end

  test "should create applicant_person_qualification_university_field_of_study" do
    assert_difference('ApplicantPersonQualificationUniversityFieldOfStudy.count') do
      post applicant_person_qualification_university_field_of_studies_url, params: { applicant_person_qualification_university_field_of_study: { End_date: @applicant_person_qualification_university_field_of_study.End_date, Field_Of_Study: @applicant_person_qualification_university_field_of_study.Field_Of_Study, Start_Date: @applicant_person_qualification_university_field_of_study.Start_Date, applicant_id: @applicant_person_qualification_university_field_of_study.applicant_id, applicant_qualification_id: @applicant_person_qualification_university_field_of_study.applicant_qualification_id, applicant_qualification_status_id: @applicant_person_qualification_university_field_of_study.applicant_qualification_status_id, applicant_university_id: @applicant_person_qualification_university_field_of_study.applicant_university_id } }
    end

    assert_redirected_to applicant_person_qualification_university_field_of_study_url(ApplicantPersonQualificationUniversityFieldOfStudy.last)
  end

  test "should show applicant_person_qualification_university_field_of_study" do
    get applicant_person_qualification_university_field_of_study_url(@applicant_person_qualification_university_field_of_study)
    assert_response :success
  end

  test "should get edit" do
    get edit_applicant_person_qualification_university_field_of_study_url(@applicant_person_qualification_university_field_of_study)
    assert_response :success
  end

  test "should update applicant_person_qualification_university_field_of_study" do
    patch applicant_person_qualification_university_field_of_study_url(@applicant_person_qualification_university_field_of_study), params: { applicant_person_qualification_university_field_of_study: { End_date: @applicant_person_qualification_university_field_of_study.End_date, Field_Of_Study: @applicant_person_qualification_university_field_of_study.Field_Of_Study, Start_Date: @applicant_person_qualification_university_field_of_study.Start_Date, applicant_id: @applicant_person_qualification_university_field_of_study.applicant_id, applicant_qualification_id: @applicant_person_qualification_university_field_of_study.applicant_qualification_id, applicant_qualification_status_id: @applicant_person_qualification_university_field_of_study.applicant_qualification_status_id, applicant_university_id: @applicant_person_qualification_university_field_of_study.applicant_university_id } }
    assert_redirected_to applicant_person_qualification_university_field_of_study_url(@applicant_person_qualification_university_field_of_study)
  end

  test "should destroy applicant_person_qualification_university_field_of_study" do
    assert_difference('ApplicantPersonQualificationUniversityFieldOfStudy.count', -1) do
      delete applicant_person_qualification_university_field_of_study_url(@applicant_person_qualification_university_field_of_study)
    end

    assert_redirected_to applicant_person_qualification_university_field_of_studies_url
  end
end
