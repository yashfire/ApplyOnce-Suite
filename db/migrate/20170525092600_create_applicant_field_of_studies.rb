class CreateApplicantFieldOfStudies < ActiveRecord::Migration[5.0]
  def change
    create_table :applicant_field_of_studies do |t|
      t.string :Field_Of_Study
      t.date :Start_Date
      t.date :End_date
      t.references :applicant, foreign_key: true
      t.references :applicant_university, foreign_key: true
      t.references :applicant_qual, foreign_key: true
      t.references :applicant_qual_status, foreign_key: true

      t.timestamps
    end
  end
end
