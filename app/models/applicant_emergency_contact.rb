class ApplicantEmergencyContact < ApplicationRecord
  belongs_to :applicant

  validates_format_of :Emergency_Contact_Number,:with => /\A([0]{1})\d{9}\z/
  validates :Emergency_Contact_Name, presence: true
  validates :Emergency_Contact_Number, presence: true
  validates :Emergency_Contact_Relationship, presence: true	
end
