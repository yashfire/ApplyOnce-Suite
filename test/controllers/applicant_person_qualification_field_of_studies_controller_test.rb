require 'test_helper'

class ApplicantPersonQualificationFieldOfStudiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @applicant_person_qualification_field_of_study = applicant_person_qualification_field_of_studies(:one)
  end

  test "should get index" do
    get applicant_person_qualification_field_of_studies_url
    assert_response :success
  end

  test "should get new" do
    get new_applicant_person_qualification_field_of_study_url
    assert_response :success
  end

  test "should create applicant_person_qualification_field_of_study" do
    assert_difference('ApplicantPersonQualificationFieldOfStudy.count') do
      post applicant_person_qualification_field_of_studies_url, params: { applicant_person_qualification_field_of_study: { End_Date: @applicant_person_qualification_field_of_study.End_Date, Field_Of_Study: @applicant_person_qualification_field_of_study.Field_Of_Study, Start_Date: @applicant_person_qualification_field_of_study.Start_Date } }
    end

    assert_redirected_to applicant_person_qualification_field_of_study_url(ApplicantPersonQualificationFieldOfStudy.last)
  end

  test "should show applicant_person_qualification_field_of_study" do
    get applicant_person_qualification_field_of_study_url(@applicant_person_qualification_field_of_study)
    assert_response :success
  end

  test "should get edit" do
    get edit_applicant_person_qualification_field_of_study_url(@applicant_person_qualification_field_of_study)
    assert_response :success
  end

  test "should update applicant_person_qualification_field_of_study" do
    patch applicant_person_qualification_field_of_study_url(@applicant_person_qualification_field_of_study), params: { applicant_person_qualification_field_of_study: { End_Date: @applicant_person_qualification_field_of_study.End_Date, Field_Of_Study: @applicant_person_qualification_field_of_study.Field_Of_Study, Start_Date: @applicant_person_qualification_field_of_study.Start_Date } }
    assert_redirected_to applicant_person_qualification_field_of_study_url(@applicant_person_qualification_field_of_study)
  end

  test "should destroy applicant_person_qualification_field_of_study" do
    assert_difference('ApplicantPersonQualificationFieldOfStudy.count', -1) do
      delete applicant_person_qualification_field_of_study_url(@applicant_person_qualification_field_of_study)
    end

    assert_redirected_to applicant_person_qualification_field_of_studies_url
  end
end
