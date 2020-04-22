$i =0

class AdminController < ApplicationController


  def main
    @details = ApplicantPersonalDetail.all
     @applicants = Applicant.all
    @table = @applicants
    @gender = ApplicantGender.all
    @race = ApplicantRace.all
    @qualification_details = ApplicantPersonQualificationFieldOfStudy.all
    @stutus=ApplicantQualStatus.all
    @uni = ApplicantUniversity.all
    @nql_qual = ApplicantNqfQualification.all
    @address = ApplicantAddress.all
    @city = ApplicantPmCity.all
    @muni = ApplicantPMunicipality.all
    @prov = ApplicantProvince.all
    @joins = @table
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
                results = ActiveRecord::Base.connection.execute("Insert into shortlist_candidates set applicant_id =" + a +", Applicant_Status = 4;")
                results = ActiveRecord::Base.connection.execute("update applicant_personal_details set Application_Status =  4 where applicant_id="+ a +";")
              end
              end
        end
