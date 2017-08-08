class AddColumnsAddApplicantPersonQualificationFieldOfStudies < ActiveRecord::Migration[5.0]
  def change
  	add_column :applicant_person_qualification_field_of_studies, :Start_Date, :date
    add_column :applicant_person_qualification_field_of_studies, :End_Date, :date
  end
end
