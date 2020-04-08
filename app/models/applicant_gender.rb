class ApplicantGender < ApplicationRecord
	# has_many :applicant_personal_details
	has_many :admin
	def to_s
		self.Gender
	end
end
