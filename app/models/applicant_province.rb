class ApplicantProvince < ApplicationRecord
	belongs_to :applicant_address
	has_many :applicant_p_municipalities
end
