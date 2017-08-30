class CreateApplicantLicenseStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :applicant_license_statuses do |t|
      t.string :Drivers_License_Status

      t.timestamps
    end
  end
end
