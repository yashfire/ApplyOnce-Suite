class ApplicantExperience < ApplicationRecord
  belongs_to :applicant
  # has_many :applicant_employment_types
end
