class ApplicantProgramInterest < ApplicationRecord
	has_many :applicant_foi_programs

	def to_s
        self.Program
    end
end
