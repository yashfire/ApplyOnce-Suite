
class WelcomeMailer < ApplicationMailer

	def welcome_send(applicant)
		@applicant = applicant
		mail to: applicant.email, subject: "Welcome to Little Pig Recruitment Agency", from: "info@littlepig.cc"
	end
end
