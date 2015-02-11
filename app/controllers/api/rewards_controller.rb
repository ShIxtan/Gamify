module Api
  class RewardsController < ApiController
    def click
      @reward = Reward.find(params[:id])
      task_click = @reward.task_clicks.new({sign: params[:sign]})
      if task_click.save
        render json: task_click
      else
        render json: { error: "invalid url" }, status: :unprocessable_entity
      end
    end

    def create
      @reward = Reward.new(reward_params)
      @reward.user_id = current_user.id
      @reward.cost = 10
      if @reward.save
        render :show
      else
        render json: { error: "invalid url" }, status: :unprocessable_entity
      end
    end

    def update
      @reward = Reward.find(params[:id])
      @reward.tag_ids = params[:tag_ids] if params[:tag_ids]
      if @reward.update(reward_params)
        render :show
      else
        render json: { error: "invalid url" }, status: :unprocessable_entity
      end
    end

    def destroy
      @reward = Reward.find(params[:id])
      @reward.destroy
      render json: {}
    end

    def index
      @rewards = current_user.rewards.order(:rank).includes(:tags)
      render :index
    end

    def show
      @reward = Reward.includes(:tags).find(params[:id])
      render :show
    end

    private

    def reward_params
      params.require(:reward).permit(:title, :rank, :description, :cost, :tag_ids)
    end
  end
end
