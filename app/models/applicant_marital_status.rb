class ApplicantMaritalStatus < ApplicationRecord
	def to_s
		self.Marital_Status
	end
end
