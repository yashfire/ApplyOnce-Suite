class ApplicantDisabilityType < ApplicationRecord
  belongs_to :applicant
  belongs_to :applicant_disability
end
