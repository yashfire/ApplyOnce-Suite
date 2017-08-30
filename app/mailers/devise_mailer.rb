class DeviseMailer < Devise::Mailer   
  default from: 'info@littlepig.agency'
  helper :application # gives access to all helpers defined within `application_helper`.
  include Devise::Controllers::UrlHelpers # Optional. eg. `confirmation_url`
  default template_path: 'devise/mailer' # to make sure that your mailer uses the devise views
  
  def confirmation_instructions(record, token, opts={})
   #headers["Custom-header"] = "Bar"
   opts[:from] = 'info@littlepig.agency'
   opts[:reply_to] = 'info@littlepig.agency'
   super
  end
end
