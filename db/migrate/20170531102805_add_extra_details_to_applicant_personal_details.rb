class AddExtraDetailsToApplicantPersonalDetails < ActiveRecord::Migration[5.0]
  def change
    add_column :applicant_personal_details, :applicant_current_occupation_id, :integer
  end
end
