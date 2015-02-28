module Api
  class UsersController < ApiController
    def update
      @user = User.includes(:tags, :dailies, :habits, :rewards, :todos).find(params[:id])
      if @user.update_attributes(user_params)
        render :show
      else
        render json: current_user.errors
      end
    end

    def show
      @user = User.includes(:tags, :dailies, :habits, :rewards, :todos).find(params[:id])
      render :show
    end

    def new
      @user = User.seed_new
      login!(@user)
      render :show
    end

    private

    def user_params
      params.require(:user).permit(:gold, :xp, :health, :level)
    end
  end
end
