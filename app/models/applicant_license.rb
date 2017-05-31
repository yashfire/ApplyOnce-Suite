class ApplicantLicense < ApplicationRecord
  belongs_to :applicant
  belongs_to :applicant_license_code
  belongs_to :applicant_license_status

  def to_s
  	"#{Applicant_Drivers_License_Code} | #{Applicant_Drivers_License_Status}"
  end
end
