class AddDetailsToApplicantPersonQualificationFieldOfStudy < ActiveRecord::Migration[5.0]
  def change
    add_column :applicant_person_qualification_field_of_studies, :applicant_university_id, :integer
    add_column :applicant_person_qualification_field_of_studies, :applicant_qual_status_id, :integer
    add_column :applicant_person_qualification_field_of_studies, :applicant_nqf_qualification_id, :integer
  end
end
