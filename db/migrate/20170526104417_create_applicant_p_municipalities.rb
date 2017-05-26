class CreateApplicantPMunicipalities < ActiveRecord::Migration[5.0]
  def change
    create_table :applicant_p_municipalities do |t|
      t.references :applicant_province, foreign_key: true
      t.string :Municipality_Name

      t.timestamps
    end
  end
end
