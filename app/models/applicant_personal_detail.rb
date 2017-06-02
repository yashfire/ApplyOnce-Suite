class ApplicantPersonalDetail < ApplicationRecord
  belongs_to :applicant
  has_many :applicant_races

  	validates_uniqueness_of :applicant_id

	validates :Surname, presence: true
	validates :First_Name, presence: true
	validates :Middle_Name, presence: true
	validates :Contact_Number, presence: true
	validates :Alt_Contact_Number, presence: true
	validates :Criminal_Record, presence: true
	validates :Skills, presence: true
	validates :Application_Status, presence: true
	validates :Number_Of_Dependancies, presence: true
	validates :applicant_id, presence: true
	validates :created_at, presence: true
	validates :updated_at, presence: true
	validates :applicant_race_id, presence: true
	validates :applicant_gender_id, presence: true
	validates :applicant_marital_status_id, presence: true
	validates :applicant_nationality_id, presence: true
	validates :applicant_current_occupation_id, presence: true
	
end
