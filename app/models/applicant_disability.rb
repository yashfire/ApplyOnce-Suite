class ApplicantDisability < ApplicationRecord
	has_many :applicant_disability_types
	def to_s
		self.Disability
	end
end
