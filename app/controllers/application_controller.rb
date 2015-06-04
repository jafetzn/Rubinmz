class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_paramters, if: :devise_controller?

  protected
  def configure_permitted_paramters
  	devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:primer_nombre, :primer_apellido, :nickname, :password, :password_confirmation, :email, :encrypted_password)}
  end
end
