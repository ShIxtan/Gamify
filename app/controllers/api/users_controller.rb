module Api
  class UsersController < ApiController
    def update
      if current_user.update_attributes(user_params)
        render json: current_user
      else
        render json: current_user.errors
      end
    end

    def show
      render json: current_user
    end

    private

    def user_params
      params.require(:user).permit(:gold)
    end
  end
end
