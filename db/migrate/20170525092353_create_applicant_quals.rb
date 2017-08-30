class CreateApplicantQuals < ActiveRecord::Migration[5.0]
  def change
    create_table :applicant_quals do |t|
      t.string :Qualification_Name

      t.timestamps
    end
  end
end
