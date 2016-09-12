class UsersController < ApplicationController
  include AuthHelper

  def new
    @user = User.new
    render :new
  end

  def create
    set_user
    if @user.save
      login(@user)
      flash[:success] = "User account created! Welcome to NapZZZ"
      redirect_to "/"
    else
      flash[:notice] = "There was a problem creating your account. #{@user.errors.full_messages.join(', ')}."
      redirect_to new_user_path
    end
  end

  def edit
    @user = User.find(params[:id])
    auth_fail("edit other user's information!", @user) if !auth_route(@user)
  end

  def update
    @user = User.find(params[:id])
    if auth_route(@user)
      if @user.update(user_params)
        flash[:success] = "Your information was successfully updated"
        redirect_to "/"
      else
        render :edit
      end
    else
      auth_fail("update other people's information!", @user)
    end
  end

  def destroy
    @user = User.find(params[:id])
    if auth_route(@user)
      Listing.delete.all(:user => @user.id)
      @user.destory
      flash[:success] = "Your account has been deactivated"
      redirect_to "/"
    else
      auth_fail("Your account could not be deactivated.", user_path(@user))
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
