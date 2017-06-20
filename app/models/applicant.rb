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

  
  #validates_format_of :id_number,:with => /\A([0-9]{13})\z/  
  #validates_format_of :id_number,:with =>/\A(?<Year>[0-9][0-9])(?<Month>([0][1-9])|([1][0-2]))(?<Day>([0-2][0-9])|([3][0-1]))(?<Gender>[0-9])(?<Series>[0-9]{3})(?<Citizenship>[0-9])(?<Uniform>[0-9])(?<Control>[0-9])\z/
  validates_format_of :id_number, :with => /\A(((\d{2}((0[13578]|1[02])(0[1-9]|[12]\d|3[01])|(0[13456789]|1[012])(0[1-9]|[12]\d|30)|02(0[1-9]|1\d|2[0-8])))|([02468][048]|[13579][26])0229))(( |-)(\d{4})( |-)(\d{3})|(\d{7}))\z/
  
  validates_uniqueness_of :id_number, length: { minimum: 13, maximum: 13 }
  validates_uniqueness_of :email
  validates_uniqueness_of :username

  validates :username, presence: true
  validates :id_number, presence: true
  validates :email, presence: true
  
  after_create :welcome_send
  def welcome_send
    WelcomeMailer.welcome_send(self).deliver
    # redirect_to root_url, alert: "Thank you for signing up"
  end

end
