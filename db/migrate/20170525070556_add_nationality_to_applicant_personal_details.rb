class AddNationalityToApplicantPersonalDetails < ActiveRecord::Migration[5.0]
  def change
    add_reference :applicant_personal_details, :applicant_nationality, foreign_key: true
  end
end
