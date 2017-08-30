class CreateApplicantFoiPrograms < ActiveRecord::Migration[5.0]
  def change
    create_table :applicant_foi_programs do |t|
      t.references :applicant, foreign_key: true
      t.references :applicant_program_interest, foreign_key: true
      t.references :applicant_field_of_interest, foreign_key: true

      t.timestamps
    end
  end
end
