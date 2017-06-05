class ApplicantFieldOfStudy < ApplicationRecord
  belongs_to :applicant
  belongs_to :applicant_university
  belongs_to :applicant_qual
  belongs_to :applicant_qual_status

  def a_method_used_for_validation_purposes
    errors.add(:applicant_university_id, presence: true)
	errors.add(:applicant_qual_id, presence: true)
	errors.add(:applicant_qual_status_id, presence: true)
  end 

  validates :Field_Of_Study, presence: true
  validates :Start_Date, presence: true
  validates :End_date, presence: true
end
