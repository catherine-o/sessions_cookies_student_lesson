class SessionsController < ApplicationController

    def new
    end

    def create
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])   #(if user not nil.....)
            session[:user_id] = user.id
            redirect_to islands_path
        else
            flash[:alert] = "Somthing went wrong, please try again."
            render :new
        end
    end

    def destroy
        # session.delete(:user_id) either will work
        session[:user_id] = nil #to logout
        redirect_to islands_path
    end
end
