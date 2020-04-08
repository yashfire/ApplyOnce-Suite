class Admin < ApplicationRecord
  has_many :applicant_address
  has_many :applicant_current_occupation
  has_many :applicant_disability_type
  has_many :applicant_disability
  has_many :applicant_emergency_contact
  has_many :applicant_employment_type
  has_many :applicant_experience
  has_many :applicant_field_of_interest
  has_many :applicant_field_of_study
  has_many :applicant_foi_program
  has_many :applicant_gender
  has_many :applicant_license_code
  has_many :applicant_license_status
  has_many :applicant_marital_status
  has_many :applicant_nationality
  has_many :applicant_nqf_level
  has_many :applicant_nql_qualification
  has_many :applicant_p_municipality
  has_many :applicant_person_qualification
  has_many :applicant_personal_details
  has_many :applicant_pm_city
  has_many :applicant_program_interest
  has_many :applicant_province
  has_many :applicant_qual_status
  has_many :applicant_qual
  has_many :applicant_qualification_status
  has_many :applicant_race
  has_many :applicant_reference
  has_many :applicant_university
  has_many :applicant

  # admin = admin.joins (has_many :applicant_address, :applicant_current_occupation, :applicant_disability_type, :applicant_disability, :applicant_emergency_contact, :applicant_employment_type, :applicant_experience, :applicant_field_of_interest, :applicant_field_of_study, :applicant_foi_program, :applicant_gender, :applicant_license_code, :applicant_license_status, :applicant_marital_status, :applicant_nationality, :applicant_nqf_level, :applicant_nql_qualification, :applicant_p_municipality, :applicant_person_qualification, :applicant_personal_details, :applicant_pm_city, :applicant_program_interest, :applicant_province, :applicant_qual_status. :applicant_qual, :applicant_qualification_status, :applicant_race, :applicant_reference, :applicant_university, :applicant)
end
