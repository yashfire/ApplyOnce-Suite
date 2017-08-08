class AddFkToApplicantPersonQualificationFieldOfStudies < ActiveRecord::Migration[5.0]
  def change
    add_column :applicant_person_qualification_field_of_studies, :applicant_id, :integer
  end
end
