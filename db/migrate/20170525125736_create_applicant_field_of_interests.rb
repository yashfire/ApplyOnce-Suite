class CreateApplicantFieldOfInterests < ActiveRecord::Migration[5.0]
  def change
    create_table :applicant_field_of_interests do |t|
      t.string :Field_Of_Interest

      t.timestamps
    end
  end
end
