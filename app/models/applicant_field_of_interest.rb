class ApplicantFieldOfInterest < ApplicationRecord
	has_many :applicant_foi_programs

	def to_s
		self.Field_Of_Interest
	end
end
