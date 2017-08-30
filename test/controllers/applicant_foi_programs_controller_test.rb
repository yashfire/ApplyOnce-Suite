require 'test_helper'

class ApplicantFoiProgramsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @applicant_foi_program = applicant_foi_programs(:one)
  end

  test "should get index" do
    get applicant_foi_programs_url
    assert_response :success
  end

  test "should get new" do
    get new_applicant_foi_program_url
    assert_response :success
  end

  test "should create applicant_foi_program" do
    assert_difference('ApplicantFoiProgram.count') do
      post applicant_foi_programs_url, params: { applicant_foi_program: { applicant_field_of_interest_id: @applicant_foi_program.applicant_field_of_interest_id, applicant_id: @applicant_foi_program.applicant_id, applicant_program_interest_id: @applicant_foi_program.applicant_program_interest_id } }
    end

    assert_redirected_to applicant_foi_program_url(ApplicantFoiProgram.last)
  end

  test "should show applicant_foi_program" do
    get applicant_foi_program_url(@applicant_foi_program)
    assert_response :success
  end

  test "should get edit" do
    get edit_applicant_foi_program_url(@applicant_foi_program)
    assert_response :success
  end

  test "should update applicant_foi_program" do
    patch applicant_foi_program_url(@applicant_foi_program), params: { applicant_foi_program: { applicant_field_of_interest_id: @applicant_foi_program.applicant_field_of_interest_id, applicant_id: @applicant_foi_program.applicant_id, applicant_program_interest_id: @applicant_foi_program.applicant_program_interest_id } }
    assert_redirected_to applicant_foi_program_url(@applicant_foi_program)
  end

  test "should destroy applicant_foi_program" do
    assert_difference('ApplicantFoiProgram.count', -1) do
      delete applicant_foi_program_url(@applicant_foi_program)
    end

    assert_redirected_to applicant_foi_programs_url
  end
end
