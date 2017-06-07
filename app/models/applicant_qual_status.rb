class ApplicantQualStatus < ApplicationRecord
	def to_s
		self.Qualification_Status
	end
end
