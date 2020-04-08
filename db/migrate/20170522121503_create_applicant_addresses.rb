class CreateApplicantAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :applicant_addresses do |t|
      t.string :Address_Line_1
      t.string :Address_Line_2
      t.string :Address_Line_3
      t.integer :Postal_Code
      t.references :applicant, foreign_key: true

      t.timestamps
    end
  end
end
