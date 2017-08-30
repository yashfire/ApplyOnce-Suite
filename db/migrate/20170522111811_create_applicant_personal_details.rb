class CreateApplicantPersonalDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :applicant_personal_details do |t|
      t.string :Surname
      t.string :First_Name
      t.string :Middle_Name
      t.string :Contact_Number
      t.string :Alt_Contact_Number
      t.integer :Criminal_Record
      t.text :Skills
      t.integer :Application_Status, default: '1'
      t.integer :Number_Of_Dependancies
      t.references :applicant, foreign_key: true

      t.timestamps
    end
  end
end
