class ApplicantPersonalDetail < ApplicationRecord
  belongs_to :applicant
  belongs_to :applicant_race
  belongs_to :applicant_gender
  belongs_to :applicant_nationality
  belongs_to :applicant_marital_status
  belongs_to :applicant_current_occupation
  has_many:admin
  	validates_uniqueness_of :applicant_id

	validates :Surname, presence: true
	validates :First_Name, presence: true
	# validates :Middle_Name, presence: true
	validates_format_of :Contact_Number, :with => /\A([0]{1})\d{9}\z/
	validates :Contact_Number, presence: true
	validates_format_of :Alt_Contact_Number, :with => /\A([0]{1})\d{9}\z/
	validates :Alt_Contact_Number, presence: true
	validates :Criminal_Record, presence: true
	validates :Skills, presence: true
	validates :Application_Status, presence: true
	validates_format_of :Number_Of_Dependancies, presence: true, :with => /\A\d{1}\z/
	validates :applicant_id, presence: true
	validates :applicant_race_id, presence: true
	validates :applicant_gender_id, presence: true
	validates :applicant_marital_status_id, presence: true
	validates :applicant_nationality_id, presence: true
	validates :applicant_current_occupation_id, presence: true

end
