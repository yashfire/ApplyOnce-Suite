class CreateApplicantRaces < ActiveRecord::Migration[5.0]
  def change
    create_table :applicant_races do |t|
      t.string :Race

      t.timestamps
    end
  end
end
