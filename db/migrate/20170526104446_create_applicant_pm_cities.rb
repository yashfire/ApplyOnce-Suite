class CreateApplicantPmCities < ActiveRecord::Migration[5.0]
  def change
    create_table :applicant_pm_cities do |t|
      t.references :applicant_p_municipality, foreign_key: true
      t.string :City_Name

      t.timestamps
    end
  end
end
