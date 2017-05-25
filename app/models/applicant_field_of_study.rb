class ApplicantFieldOfStudy < ApplicationRecord
  belongs_to :applicant
  belongs_to :applicant_university
  belongs_to :applicant_qual
  belongs_to :applicant_qual_status
end
