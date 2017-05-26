class ApplicantAddress < ApplicationRecord
  belongs_to :applicant
  has_many :applicant_pm_cities
  validates_uniqueness_of :Address_Line_1
end
