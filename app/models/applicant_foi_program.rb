class ApplicantFoiProgram < ApplicationRecord
  belongs_to :applicant
  belongs_to :applicant_program_interest
  belongs_to :applicant_field_of_interest	
end
