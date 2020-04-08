class ApplicantLicense < ApplicationRecord
  belongs_to :applicant
  belongs_to :applicant_license_code
  belongs_to :applicant_license_status

   	validates :applicant_license_code_id, presence: true
	# validates :applicant_license_status_id, presence: true
  # def to_s
  # 	"#{Applicant_Drivers_License_Code} | #{Applicant_Drivers_License_Status}"
  # end
end
