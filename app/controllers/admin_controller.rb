$i =0

class AdminController < ApplicationController


  def main
    @details = ApplicantPersonalDetail.all
     @applicants = Applicant.all
    @table = @applicants
    @gender = ApplicantGender.all
    @race = ApplicantRace.all
    @qualification_details = ApplicantPersonQualificationFieldOfStudy.all
    @uni = ApplicantUniversity.all
    @nql_qual = ApplicantNqfQualification.all
    @address = ApplicantAddress.all
    @city = ApplicantPmCity.all
    @muni = ApplicantPMunicipality.all
    @prov = ApplicantProvince.all
    @joins = @table
    # # @joins = Applicant.joins(ApplicantPersonalDetails)
    # # admin = Applicant.joins(:applicant_address)
    # admin = Applicant.joins (:applicant_current_occupation)
    # admin = admin.joins (:applicant_disability_type)
    # admin = admin.joins (:applicant_disability)
    # admin = admin.joins (:applicant_emergency_contact)
    # admin = admin.joins (:applicant_employment_type)
    # admin = admin.joins (:applicant_experience)
    # admin = admin.joins (:applicant_field_of_interest)
    # admin = admin.joins ( :applicant_field_of_study)
    # admin = admin.joins (:applicant_foi_program)
    # admin = admin.joins (:applicant_gender)
    # admin = admin.joins (:applicant_license_code)
    # admin = admin.joins (:applicant_license_status)
    # admin = admin.joins (:applicant_marital_status)
    # admin = admin.joins (:applicant_nationality)
    # admin = admin.joins (:applicant_nqf_level)
    # admin = admin.joins (:applicant_nql_qualification)
    # admin = admin.joins (:applicant_p_municipality)
    # admin = admin.joins (:applicant_person_qualification)
    # admin = admin.joins (:applicant_personal_details)
    # admin = admin.joins (:applicant_pm_city)
    # admin = admin.joins (:applicant_program_interest)
    # admin = admin.joins (:applicant_province)
    # admin = admin.joins (:applicant_qual_status)
    # admin = admin.joins (:applicant_qual)
    # admin = admin.joins (:applicant_qualification_status)
    # admin = admin.joins (:applicant_race)
    # admin = admin.joins (:applicant_reference)
    # admin = admin.joins (:applicant_university)


    # @joins = admin

    #
    #  @search = params["search"]
    # if @search.present?
    #   @name = @search["name"]
    #   @result = .where(name: @name)
    # end
       $i =0
  end

      def documents
        @details = ApplicantPersonalDetail.all
        @qualification_details = ApplicantPersonQualificationFieldOfStudy.all
        @uni = ApplicantUniversity.all

        tobeshortlisted = params[:array]
        tobeshortlisted=tobeshortlisted.split(",")
          @message = tobeshortlisted
          @ds = "Please Review if these are the candidates you want to shortlist."
      end
      helper_method :documents
      def confirm
              @list =params[:applicant_id]
              @list =@list.split(",")
              @Status = params[:Applicant_Status]
              @Status = @Status.to_i
              @list.each do |a|
                # @check = ActiveRecord::Base.connection.execute("Select * from shortlist_candidates where applicant_id =" + a +" AND Applicant_Status = 4;");
                client = ActiveRecord::Base
                # sql = "SELECT * FROM shortlist_candidates WHERE applicant_id=" + a +";"
                # if client.connection.execute(sql).success?
                #   d = a.push()
                #
                # else
                results = ActiveRecord::Base.connection.execute("Insert into shortlist_candidates set applicant_id =" + a +", Applicant_Status = 4;")
                results = ActiveRecord::Base.connection.execute("update applicant_personal_details set Application_Status =  4 where applicant_id="+ a +";")
              end
              end
        end

# def content
#   @table.each do |applicants|
#     idNum = applicants.id_number.to_s.chars;
#     yob = idNum[0]+idNum[1]
#     age = ((DateTime.now.year - yob.to_i)-1900)
#     det = @details.all.where("applicant_id = "+ applicants.id.to_s)
#     if det.exists?
#       s = det.pluck
#       fullName = s[0][2]+" "+s[0][1]
#
#       gen_id = s[0][14]
#       if !gen_id.blank?
#           gen_group = @gender.select("Gender").where("id = " + gen_id.to_s)
#           gen = gen_group.pluck
#           g = gen[0][1]
#       else
#           gen_id = 3
#           gen_group = @gender.select("Gender").where("id = " + gen_id.to_s)
#           gen = gen_group.pluck
#           g = gen[0][1]
#       end
#
#       race_id = s[0][13]
#       if !race_id.blank?
#           race_group =  @race.all.where("id = " + race_id.to_s)
#           race_values = race_group.pluck
#           race = race_values[0][1]
#       end
#
#       uni_id = s[0][8]
#       if !uni_id.blank?
#            uni_group = @uni.all.where("id ="+ uni_id.to_s)
#            if uni_group.exists?
#               uni_group = uni_group.pluck
#               uni = uni_group[0][1]
#            end
#       end
#
#       qual_det = @qualification_details.all.where("applicant_id = "+ applicants.id.to_s)
#       if qual_det.exists?
#         qual_det = qual_det.pluck
#         if !qual_det.blank?
#              qual_ID_group =qual_det
#              qual_id = qual_ID_group
#              qual_len = qual_ID_group.length
#              i = 0
#              t=0
#         else
#           qual_len = 0
#         end
#       else
#         qual_len ="missing"
#       end
#     end
#   end
# end
# helper_method :content
