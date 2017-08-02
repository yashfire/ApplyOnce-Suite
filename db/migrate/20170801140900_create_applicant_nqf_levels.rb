class CreateApplicantNqfLevels < ActiveRecord::Migration[5.0]
  def change
    create_table :applicant_nqf_levels do |t|
      t.string :NQF_Level

      t.timestamps
    end
  end
end
