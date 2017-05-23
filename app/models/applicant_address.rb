class ApplicantAddress < ApplicationRecord
  belongs_to :applicant
  validates_uniqueness_of :Address_Line_1
end
