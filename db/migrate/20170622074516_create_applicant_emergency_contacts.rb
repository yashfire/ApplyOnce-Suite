class CreateApplicantEmergencyContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :applicant_emergency_contacts do |t|
      t.string :Emergency_Contact_Name
      t.string :Emergency_Contact_Number
      t.string :Emergency_Contact_Relationship
      t.references :applicant, foreign_key: true

      t.timestamps
    end
  end
end
