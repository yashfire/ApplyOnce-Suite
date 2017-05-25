class CreateApplicantQualStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :applicant_qual_statuses do |t|
      t.string :Qualification_Status

      t.timestamps
    end
  end
end
