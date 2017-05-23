class ApplicantPersonalDetail < ApplicationRecord
  belongs_to :applicant
  validates_uniqueness_of :applicant_id
end
