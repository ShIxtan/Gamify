module Api
  class RewardsController < ApiController
    def click
      reward = Reward.find(params[:id])
      task_click = reward.task_clicks.new({sign: params[:sign]})
      if task_click.save
        render :json => task_click
      else
        render :json => { error: "invalid url" }, status: :unprocessable_entity
      end
    end

    def create
      reward = Reward.new(reward_params)
      reward.user_id = current_user.id
      if reward.save
        render :json => reward
      else
        render :json => { error: "invalid url" }, status: :unprocessable_entity
      end
    end

    def update
      reward = Reward.find(params[:id])
      if reward.update(reward_params)
        render :json => reward
      else
        render :json => { error: "invalid url" }, status: :unprocessable_entity
      end
    end

    def destroy
      reward = Reward.find(params[:id])
      reward.destroy
      render json: {}
    end

    def index
      render json: current_user.rewards.order(:rank)
    end

    private

    def reward_params
      params.require(:reward).permit(:title, :rank, :description)
    end
  end
end
