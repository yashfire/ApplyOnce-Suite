class ApplicantLicenseCode < ApplicationRecord
	has_many :applicant_drivers_licenses

	def to_s
		self.Drivers_License_Code
	end	
end
