class UsersController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create
    set_user
    if @user.save
      login(@user)
      flash[:notice] = "User account created! Welcome to NapZZZ"
      redirect_to "/"
    else
      flash[:notice] = "There was a problem creating your account. #{@user.errors.full_messages.join(', ')}."
      redirect_to new_user_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password_digest, :profile_photo)
  end

  def set_user
    @user = User.new(user_params)
  end
end
