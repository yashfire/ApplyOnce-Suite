class CreateApplicantProgramInterests < ActiveRecord::Migration[5.0]
  def change
    create_table :applicant_program_interests do |t|
      t.string :Program

      t.timestamps
    end
  end
end
