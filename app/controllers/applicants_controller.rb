class ApplicantsController < ApplicationController
  def index
  	@applicant_personal_details = current_applicant.applicant_personal_details.all
    @applicant_addresses = current_applicant.applicant_addresses.all
    @applicant_experiences = current_applicant.applicant_experiences.all
    @applicant_references = current_applicant.applicant_references.all
    @applicant_foi_programs = current_applicant.applicant_foi_programs.all
    @applicant_disability_types = current_applicant.applicant_disability_types.all
    @applicant_field_of_studies = current_applicant.applicant_field_of_studies.all
    @applicant_licenses = current_applicant.applicant_licenses.all
    # @applicant_race = ApplicantRace.all

    respond_to do |format| 
      format.html
      format.pdf do 
        pdf = Cv.new(@applicant_personal_details, 
                    @applicant_addresses,
                    @applicant_experiences,
                    @applicant_references,
                    @applicant_disability_types,
                    @applicant_field_of_studies,
                    @applicant_licenses)
        send_data pdf.render, filename: "Curriculum Vitae.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end      


  end 
end
