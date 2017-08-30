class AddIndexToApplicantPersonQualificationFieldOfStudy < ActiveRecord::Migration[5.0]
  def change
  	#add_reference :university_id, index:true, name: 'university' 
  	#add_reference :applicant_qual_status_id, index:true, name: 'applicant_qual_status' 
	#add_reference :applicant_nqf_qualification_id, index:true, name: 'applicant_nqf_qualification' 
	#add_reference :uploads, :user, index: true
	add_index :applicant_person_qualification_field_of_studies, ["applicant_qual_status_id", "applicant_university_id", "applicant_nqf_qualification_id"], 
          :unique => true, :name => 'my_index'
  end
end
