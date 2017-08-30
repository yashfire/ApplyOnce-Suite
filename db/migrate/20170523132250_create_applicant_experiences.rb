class CreateApplicantExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :applicant_experiences do |t|
      t.string :Job_Name
      t.string :Company_Name
      t.string :Duties
      t.date :Start_Date
      t.date :End_Date
      t.references :applicant, foreign_key: true

      t.timestamps
    end
  end
end
