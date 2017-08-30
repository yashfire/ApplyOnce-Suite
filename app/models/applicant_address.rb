class ApplicantAddress < ApplicationRecord
  belongs_to :applicant
  belongs_to :applicant_pm_city

  # validates_uniqueness_of :Address_Line_1
  validates :Address_Line_1, presence: true
  validates :Address_Line_2, presence: true
  # validates :Address_Line_3, presence: true
  validates_format_of :Postal_Code, :with => /\A([0-9]{4})\z/
  validates :applicant_pm_city_id, presence: true

  # after_initialize :set_defaults

  # def set_defaults
  #   self.Address_Line_3 = "n/a" if self.Address_Line_3.nil?
  # end

end
