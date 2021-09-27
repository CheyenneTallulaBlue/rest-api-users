class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new 
  end

  def create
    @user = User.new(user_params)
      if @user.save
        redirect_to users_path
      else
        render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end
 
  def auth_password
    @user = User.find(params[:id])
  end

  def is_secret_key
    return true
    # if @auth_password == Rails.application.credentials.dig(:secret_key)
    #     return true
    # end  
  end

  def destroy
    @user = User.find(params[:id])
    if is_secret_key
        @user.destroy
    end
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :username, :password_digest)
  end

end
