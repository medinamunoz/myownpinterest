class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :sign_up, only: [:mail, :password, :password_confirmation, :phone]

  protected

  def configure_permitted_parameters
  	params.require(:sign_up).permit(:email, :password, :password_confirmation, :phone)
  end

end
