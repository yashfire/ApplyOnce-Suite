class CreateApplicantLicenses < ActiveRecord::Migration[5.0]
  def change
    create_table :applicant_licenses do |t|
      t.references :applicant, foreign_key: true
      t.references :applicant_license_code, foreign_key: true
      t.references :applicant_license_status, foreign_key: true

      t.timestamps
    end
  end
end
