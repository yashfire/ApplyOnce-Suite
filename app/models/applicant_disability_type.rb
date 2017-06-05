class ApplicantDisabilityType < ApplicationRecord
  belongs_to :applicant
  belongs_to :applicant_disability

  validates :applicant_disability_id, presence: true
  validates :Disability_Type, presence: true
end
