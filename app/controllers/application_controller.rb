class ApplicationController < ActionController::Base
    helper_method :current_user

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    # def require_logged_in
    #     if logged_in?   and add a helper_method
    #     else
    # end

    # def logged_in?
    #     current_user
    # end
end
