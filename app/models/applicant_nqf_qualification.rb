class ApplicantNqfQualification < ApplicationRecord
	has_many :applicant_nqf_levels
	belongs_to :applicant_person_qualification_field_of_studies
	def to_s
		self.Qualification_Name
	end
end
