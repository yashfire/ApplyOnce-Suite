class RemoveColumnsFromApplicantPersonQualificationFieldOfStudies < ActiveRecord::Migration[5.0]
  def change
    remove_column :applicant_person_qualification_field_of_studies, :Start_Date, :string
    remove_column :applicant_person_qualification_field_of_studies, :End_Date, :string
  end
end
