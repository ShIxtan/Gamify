class UsersController < ApplicationController
  before_action :require_login, only: [:show, :update, :edit]

  def create
    @user = User.new(user_params)

    if @user.save
      login!(@user)
      redirect_to root_url
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    render :show
  end

  def edit
    @user = User.find(params[:id])
    render :edit
  end

  def update
    @user = User.update(params[:id], user_params)

    if @user.save
      redirect_to user_url(@user)
    else
      flash.now[:errors] = @user.errors.full_messages
      render :edit
    end
  end

  def new
    @user = User.new_seed
    @user.username = ""
    render :new
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
