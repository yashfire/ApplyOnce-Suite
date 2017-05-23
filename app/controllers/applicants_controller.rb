class ApplicantsController < ApplicationController
  def index
    @applicant_personal_details = current_applicant.applicant_personal_details.all
    @applicant_addresses = current_applicant.applicant_addresses.all
  end
end
