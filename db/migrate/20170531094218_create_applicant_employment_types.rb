class CreateApplicantEmploymentTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :applicant_employment_types do |t|
      t.string :Employment_Type

      t.timestamps
    end
  end
end
