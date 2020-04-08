class ApplicantUniversity < ApplicationRecord
	#belongs_to :applicant_person_qualification_field_of_study
	has_many :admin
	def to_s
		self.University_Name
	end
end
