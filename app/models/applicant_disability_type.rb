class ApplicantDisabilityType < ApplicationRecord
  belongs_to :applicant
  belongs_to :applicant_disability

  validates :applicant_disability_id, presence: true
  # validates :Disability_Type, presence: true
  after_initialize :set_defaults

  def set_defaults
    self.Disability_Type = "None" if self.Disability_Type.nil?
  end
end
