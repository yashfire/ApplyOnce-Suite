class ApplicantNqfQualification < ApplicationRecord
	has_many :applicant_nqf_levels

	has_many :admin
	def to_s
		self.Qualification_Name
	end
end
