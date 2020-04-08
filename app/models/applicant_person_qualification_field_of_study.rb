class ApplicantPersonQualificationFieldOfStudy < ApplicationRecord
	belongs_to :applicant
	belongs_to :applicant_university
	belongs_to :applicant_qual_status
	belongs_to :applicant_nqf_qualification
	has_many :admin
end
