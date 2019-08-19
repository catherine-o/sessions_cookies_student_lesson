class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      flash[:message] = "User has been successfully created."
      redirect_to islands_path
    else
      flash[:alert] = "Username already exists"
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :password, :password_confirmation)
  end

end
