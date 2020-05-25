require "mail"

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
    @candiates = ShortlistCandidates.all
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
                 #results = ActiveRecord::Base.connection.execute("Insert into shortlist_candidates set applicant_id =" + a +", Applicant_Status = 4;")
                 email = Applicant.all.where("id="+a);
                 email = email.pluck
                 email =email[0][1]
                 sendEmail(email)
                 # @check = ActiveRecord::Base.connection.execute("Select * from shortlist_candidates where applicant_id =" + a +" AND Applicant_Status = 4;");
                 client = ActiveRecord::Base
                 esults = ActiveRecord::Base.connection.execute("update applicant_personal_details set Application_Status =  4 where applicant_id="+ a +";")
              end
  end


# message = <<MESSAGE_END
# From: Private Person <yashvirmsoorjee@gmail.com>
# To: A Test User <test@todomain.com>
# MIME-Version: 1.0
# Content-type: text/html
# Subject: SMTP e-mail test

# This is an e-mail message to be sent in HTML format

# <b>This is HTML message.</b>
# <h1>This is headline.</h1>
# ?MESSAGE_END

# Net::SMTP.start('mail.your-domain.com',
                # 25,
                # 'localhost',
                # 'username', 'password' :plain


def sendEmail(email)
  options = { :address              => "smtp.gmail.com",
              :port                 => 587,
              :user_name            => 'testerfordevelopment@gmail.com',
              :password             => 'revotech',
              :authentication       => 'plain',
              :enable_starttls_auto => true  }
  Mail.defaults do
    delivery_method :smtp, options
  end
  Mail.deliver do
         to email
       from 'testerfordevelopment@gmail.com'
    subject 'TEST'
       body 'Hurray!!! Test email!'
  end
end
end
