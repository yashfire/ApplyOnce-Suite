class ApplicantQualStatus < ApplicationRecord
	belongs_to :applicant_person_qualification_field_of_study
	def to_s
		self.Qualification_Status
	end
end
