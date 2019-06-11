class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:first_name, :last_name, :user_name, :email, :password, :remember_me,:role)}
        devise_parameter_sanitizer.permit(:sign_in) {|u| u.permit(:email, :password, :remember_me)}
        devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:first_name, :last_name, :user_name, :email, :password, :remember_me,:role)}
    end
end
