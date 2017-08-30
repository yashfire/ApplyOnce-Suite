class CreateApplicantReferences < ActiveRecord::Migration[5.0]
  def change
    create_table :applicant_references do |t|
      t.string :Contact_Number
      t.string :Reference_Name
      t.string :Email_address
      t.string :Relationship
      t.references :applicant, foreign_key: true

      t.timestamps
    end
  end
end
