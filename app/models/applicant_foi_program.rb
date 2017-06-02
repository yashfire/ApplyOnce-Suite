class ApplicantFoiProgram < ApplicationRecord
  belongs_to :applicant
  belongs_to :applicant_program_interest
  belongs_to :applicant_field_of_interest	

  validates :applicant_program_interest_id, presence: true
  validates :applicant_field_of_interest_id, presence: true
end
