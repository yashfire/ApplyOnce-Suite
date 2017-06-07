class ApplicantRace < ApplicationRecord
	# has_many :applicant_personal_details
	def to_s
		self.Race
	end
end
