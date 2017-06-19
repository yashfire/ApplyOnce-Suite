class Cv < Prawn::Document 
	def initialize(details, address, experiences, references, disability_types, field_of_studies, licenses)
		super(top_margin: 70)
		  @applicant_personal_details = details
  		@applicant_personal_details.each do |app|
  			text "Curriculum Vitae of #{app.First_Name} #{app.Middle_Name} #{app.Surname}", :size => 16, :style => :bold, :spacing => 4
  			move_down 10
  			text "Personal Details", :size => 14, :style => :bold
  			move_down 10
    			text "Name: #{app.First_Name}"
    			text "Middle Name: #{app.Middle_Name}"
    			text "Surname: #{app.Surname}"
    			text "Contact Number: #{app.Contact_Number}"
    			text "Alternate Number: #{app.Alt_Contact_Number}"
    			text "Nationality: #{app.applicant_nationality}"
    			text "Race: #{app.applicant_race}"
    			text "Gender: #{app.applicant_gender}"
    			text "Marital Status: #{app.applicant_marital_status}"
    			text "Number of Dependancies: #{app.Number_Of_Dependancies}"
    			# start_new_page
  		end

      @applicant_licenses = licenses 
      @applicant_licenses.each do |license|
        move_down 10
        text "Driver License", :size => 14, :style => :bold
        move_down 10
        text "Driver License Code: #{license.applicant_license_code}"
        text "Driver License Status: #{license.applicant_license_status}"
      end

      @applicant_disability_types = disability_types
      @applicant_disability_types.each do |disability|
        move_down 10
        text "Disabilites", :size => 14, :style => :bold
        move_down 10
        text "Disability: #{disability.applicant_disability}"
        text "Disability Type: #{disability.Disability_Type}"
      end

      @applicant_addresses = address
      @applicant_addresses.each do |address|
        move_down 10
        text "Address", :size => 14, :style => :bold
        move_down 10
        text "#{address.Address_Line_1}"
        text "#{address.Address_Line_2}"
        text "#{address.Address_Line_3}"
        text "#{address.applicant_pm_city}"
        text "#{address.Postal_Code}"
      end

      @applicant_field_of_studies = field_of_studies
      @applicant_field_of_studies.each do |qualification|
        move_down 10
        text "Qualifications", :size => 14, :style => :bold
        move_down 10
        text "#{qualification.Field_Of_Study}"
        text "#{qualification.Start_Date}"
        text "#{qualification.End_date}"
        text "#{qualification.applicant_university}"
        text "#{qualification.applicant_qual}"
        text "#{qualification.applicant_qual_status}"
      end

      @applicant_experiences = experiences
      @applicant_experiences.each do |experience|
        move_down 10
        text "Work Experience", :size => 14, :style => :bold
        move_down 10
        text "#{experience.Job_Name}"
        text "#{experience.Company_Name}"
        text "#{experience.Duties}"
        text "#{experience.Start_Date}"
        text "#{experience.End_Date}"
      end 

      @applicant_references = references
      @applicant_references.each do |reference|
        move_down 10
        text "References", :size => 14, :style => :bold
        move_down 10
        text "#{reference.Reference_Name}"
        text "#{reference.Contact_Number}"
        text "#{reference.Email_address}"
        text "#{reference.Relationship}"
      end
	end 
end