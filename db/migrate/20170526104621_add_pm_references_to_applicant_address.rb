class AddPmReferencesToApplicantAddress < ActiveRecord::Migration[5.0]
  def change
    add_reference :applicant_addresses, :applicant_pm_city, foreign_key: true
  end
end
