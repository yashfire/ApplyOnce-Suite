class CreateApplicantMaritalStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :applicant_marital_statuses do |t|
      t.string :Marital_Status

      t.timestamps
    end
  end
end
