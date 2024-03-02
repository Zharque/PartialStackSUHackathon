class ApplicationController < ActionController::Base
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:gender, :birthdate, :field, :account_type])
  end
end
