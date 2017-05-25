class CreateApplicantNationalities < ActiveRecord::Migration[5.0]
  def change
    create_table :applicant_nationalities do |t|
      t.string :Nationality

      t.timestamps
    end
  end
end
