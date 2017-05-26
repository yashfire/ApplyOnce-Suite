class CreateApplicantProvinces < ActiveRecord::Migration[5.0]
  def change
    create_table :applicant_provinces do |t|
      t.string :Province_Name

      t.timestamps
    end
  end
end
