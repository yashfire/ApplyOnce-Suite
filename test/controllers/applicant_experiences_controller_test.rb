require 'test_helper'

class ApplicantExperiencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @applicant_experience = applicant_experiences(:one)
  end

  test "should get index" do
    get applicant_experiences_url
    assert_response :success
  end

  test "should get new" do
    get new_applicant_experience_url
    assert_response :success
  end

  test "should create applicant_experience" do
    assert_difference('ApplicantExperience.count') do
      post applicant_experiences_url, params: { applicant_experience: { Company_Name: @applicant_experience.Company_Name, Duties: @applicant_experience.Duties, End_Date: @applicant_experience.End_Date, Job_Name: @applicant_experience.Job_Name, Start_Date: @applicant_experience.Start_Date, applicant_id: @applicant_experience.applicant_id } }
    end

    assert_redirected_to applicant_experience_url(ApplicantExperience.last)
  end

  test "should show applicant_experience" do
    get applicant_experience_url(@applicant_experience)
    assert_response :success
  end

  test "should get edit" do
    get edit_applicant_experience_url(@applicant_experience)
    assert_response :success
  end

  test "should update applicant_experience" do
    patch applicant_experience_url(@applicant_experience), params: { applicant_experience: { Company_Name: @applicant_experience.Company_Name, Duties: @applicant_experience.Duties, End_Date: @applicant_experience.End_Date, Job_Name: @applicant_experience.Job_Name, Start_Date: @applicant_experience.Start_Date, applicant_id: @applicant_experience.applicant_id } }
    assert_redirected_to applicant_experience_url(@applicant_experience)
  end

  test "should destroy applicant_experience" do
    assert_difference('ApplicantExperience.count', -1) do
      delete applicant_experience_url(@applicant_experience)
    end

    assert_redirected_to applicant_experiences_url
  end
end
