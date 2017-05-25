class CreateApplicantGenders < ActiveRecord::Migration[5.0]
  def change
    create_table :applicant_genders do |t|
      t.string :Gender

      t.timestamps
    end
  end
end
