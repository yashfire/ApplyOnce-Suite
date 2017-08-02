class CreateApplicantPersonQualificationFieldOfStudies < ActiveRecord::Migration[5.0]
  def change
    create_table :applicant_person_qualification_field_of_studies do |t|
      t.string :Field_Of_Study
      t.string :Start_Date
      t.string :End_Date

      t.timestamps
    end
  end
end
