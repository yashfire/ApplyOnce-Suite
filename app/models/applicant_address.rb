class ApplicantAddress < ApplicationRecord
  belongs_to :applicant
  has_many :applicant_pm_cities

  # validates_uniqueness_of :Address_Line_1
  validates :Address_Line_1, presence: true
  # validates :Address_Line_2, presence: true
  # validates :Address_Line_3, presence: true
  validates_format_of :Postal_Code, :with => /\A([0-9]{4})\z/
  validates :applicant_pm_city_id, presence: true

end
