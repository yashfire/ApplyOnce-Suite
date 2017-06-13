class Applicant < ApplicationRecord
  # Include default devise modules. Others available are:
  # , :lockable, :timeoutable and :omniauthable
  has_many :applicant_personal_details, dependent: :destroy
  has_many :applicant_addresses, dependent: :destroy
  has_many :applicant_experiences, dependent: :destroy
  has_many :applicant_references, dependent: :destroy
  has_many :applicant_field_of_studies, dependent: :destroy
  has_many :applicant_foi_programs, dependent: :destroy
  has_many :applicant_licenses, dependent: :destroy
  has_many :applicant_disability_types, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  validates_uniqueness_of :username  
  validates_uniqueness_of :id_number
  validates_uniqueness_of :email
  
  after_create :welcome_send
  def welcome_send
    WelcomeMailer.welcome_send(self).deliver
    # redirect_to root_url, alert: "Thank you for signing up"
  end

end
