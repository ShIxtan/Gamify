class SessionsController < ApplicationController
  helper_method :current_users

  def create
    @user = User.find_by_credentials(params[:user][:username], params[:user][:password])

    if @user
      login!(@user)
      redirect_to user_url(@user)
    else
      flash[:errors] = ["invalid password"]
      redirect_to new_session_url
    end
  end

  def new
    @user = User.new
    render :new
  end

  def destroy
    logout!(current_user)
    redirect_to new_session_url
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
