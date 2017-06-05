class ApplicantExperience < ApplicationRecord
  belongs_to :applicant
  belongs_to :applicant_employment_type

validates :Job_Name, presence: true
validates :Company_Name, presence: true
validates :Duties, presence: true
validates :applicant_employment_type_id, presence: true
validates :Start_Date, presence: true
validates :End_Date, presence: true
 
end