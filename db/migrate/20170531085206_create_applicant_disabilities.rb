class CreateApplicantDisabilities < ActiveRecord::Migration[5.0]
  def change
    create_table :applicant_disabilities do |t|
      t.string :Disability

      t.timestamps
    end
  end
end
