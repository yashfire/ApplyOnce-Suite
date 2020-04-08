class CreateApplicantUniversities < ActiveRecord::Migration[5.0]
  def change
    create_table :applicant_universities do |t|
      t.string :University_Name

      t.timestamps
    end
  end
end
