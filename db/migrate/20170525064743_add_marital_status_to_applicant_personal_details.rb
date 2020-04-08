class AddMaritalStatusToApplicantPersonalDetails < ActiveRecord::Migration[5.0]
  def change
    add_reference :applicant_personal_details, :applicant_marital_status, foreign_key: true
  end
end
