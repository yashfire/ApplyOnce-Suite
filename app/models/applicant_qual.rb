class ApplicantQual < ApplicationRecord
	def to_s
		self.Qualification_Name
	end
end
