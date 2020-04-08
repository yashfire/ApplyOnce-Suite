class CreateApplicantDisabilityTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :applicant_disability_types do |t|
      t.references :applicant, foreign_key: true
      t.references :applicant_disability, foreign_key: true
      t.string :Disability_Type

      t.timestamps
    end
  end
end
