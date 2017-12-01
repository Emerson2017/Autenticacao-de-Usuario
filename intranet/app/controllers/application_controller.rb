class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?


  protected
  def configure_permitted_parameters
  devise_parameter_sanitizer.permit (:sign_up){ |u| u.permit(:username, :email, :password, :Setor, :image)}
	devise_parameter_sanitizer.permit (:sign_in){ |u| u.permit(:email, :password) }
	devise_parameter_sanitizer.permit (:account_update){ |u| u.permit(:email, :password, :password_confirmation, :current_password, :image) }	
	
  end

  protect_from_forgery
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = exception.message
    redirect_to root_url
  end

  rescue_from CanCan::AccessDenied do |e|
        redirect_to new_user_session_path, alert: e.message
      end

   def redirect_user
    if current_user.Setor == 'Administrador'
      redirect_to site_index_path
    else
      redirect_to controle_acessos_path
    end
  end


end
