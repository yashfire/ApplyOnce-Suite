json.extract! applicant_personal_detail, :id, :Surname, :First_Name, :Middle_Name, :Contact_Number, :Alt_Contact_Number, :Criminal_Record, :Skills, :Application_Status, :Number_Of_Dependancies, :applicant_id, :created_at, :updated_at
json.url applicant_personal_detail_url(applicant_personal_detail, format: :json)
