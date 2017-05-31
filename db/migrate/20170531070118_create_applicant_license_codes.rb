class CreateApplicantLicenseCodes < ActiveRecord::Migration[5.0]
  def change
    create_table :applicant_license_codes do |t|
      t.string :Drivers_License_Code

      t.timestamps
    end
  end
end
