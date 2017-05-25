class Applicant < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :applicant_personal_details
  has_many :applicant_addresses
  has_many :applicant_experiences
  has_many :applicant_references
  has_many :applicant_field_of_studies
  has_many :applicant_foi_programs

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_uniqueness_of :username  
  validates_uniqueness_of :id_number
  validates_uniqueness_of :email

end
