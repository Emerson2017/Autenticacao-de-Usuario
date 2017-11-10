class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?


  protected
  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit (:sign_up){ |u| u.permit(:username, :email, :password, :Setor)}
	devise_parameter_sanitizer.permit (:sign_in){ |u| u.permit(:email, :password) }
	devise_parameter_sanitizer.permit (:account_update){ |u| u.permit(:email, :password) }	
	
  end

  protect_from_forgery
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = exception.message
    redirect_to root_url
  end


end
