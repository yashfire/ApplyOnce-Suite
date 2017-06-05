class ApplicantReference < ApplicationRecord
  belongs_to :applicant
  
  validates_format_of :Contact_Number,:with => /\A([0]{1})\d{9}\z/
  validates :Reference_Name, presence: true
  validates :Relationship, presence: true
  validates :applicant_id, presence: true
  validates_format_of :Email_address, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
end
