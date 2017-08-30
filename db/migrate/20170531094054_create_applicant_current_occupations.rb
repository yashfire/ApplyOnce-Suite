class CreateApplicantCurrentOccupations < ActiveRecord::Migration[5.0]
  def change
    create_table :applicant_current_occupations do |t|
      t.string :Current_Occupation

      t.timestamps
    end
  end
end
