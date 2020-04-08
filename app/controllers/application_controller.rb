class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_applicant!
  before_action :configure_permitted_parameters, if: :devise_controller?
  #before_filter :check_applicant_confirmation, only: :create

	def configure_permitted_parameters
		    devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:username, :id_number, :email, :password, :password_confirmation, :remember_me)}

    devise_parameter_sanitizer.permit(:sign_in) {|u| u.permit(:email, :password, :remember_me)}
		devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:email, :password, :password_confirmation, :remember_me, :current_password)}
	end


  def after_sign_in_path_for(resource)
    if current_applicant.admin?
    admin_main_path
  else
    root_path
  end

  end

# private

#   def check_applicant_confirmation
#     applicant = Applicant.find_by_email(params[:email])
#     redirect_to new_applicant_session_path(:applicant) unless applicant && applicant.confirmed?
#   end

end
