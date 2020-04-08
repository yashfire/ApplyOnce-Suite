class CreateApplicantNqfQualifications < ActiveRecord::Migration[5.0]
  def change
    create_table :applicant_nqf_qualifications do |t|
      t.integer :applicant_nqf_level_id
      t.string :Qualification_Name

      t.timestamps
    end
  end
end
