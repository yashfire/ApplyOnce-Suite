class ApplicantEmploymentType < ApplicationRecord
	belongs_to :applicant_experiences
	def to_s
		self.Employment_Type
	end
end
