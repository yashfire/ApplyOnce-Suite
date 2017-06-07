class ApplicantGender < ApplicationRecord
	# has_many :applicant_personal_details
	def to_s
		self.Gender
	end
end
