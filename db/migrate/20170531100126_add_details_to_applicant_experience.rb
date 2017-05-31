class AddDetailsToApplicantExperience < ActiveRecord::Migration[5.0]
  def change
    add_reference :applicant_experiences, :applicant_employment_type, foreign_key: true
  end
end
