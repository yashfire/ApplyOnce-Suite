class ApplicantUniversity < ApplicationRecord
	#belongs_to :applicant_person_qualification_field_of_study
	def to_s
		self.University_Name
	end
end
