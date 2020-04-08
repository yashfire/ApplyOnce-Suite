class WelcomeController < ApplicationController
  def index
     if current_applicant.admin
           admin_main_path
      end
  end
end
