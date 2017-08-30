class ApplicantPMunicipality < ApplicationRecord
  belongs_to :applicant_province
  has_many :applicant_pm_cities
end
