module Api
  class DailiesController < ApiController
    def click
      daily = Daily.find(params[:id])
      task_click = daily.task_clicks.new({sign: params[:sign]})
      if task_click.save
        render :json => task_click
        daily.update_strength
      else
        render :json => { error: "invalid url" }, status: :unprocessable_entity
      end
    end

    def create
      daily = Daily.new(daily_params)
      daily.user_id = current_user.id
      if daily.save
        render :json => daily
      else
        render :json => { error: "invalid url" }, status: :unprocessable_entity
      end
    end

    def update
      daily = Daily.find(params[:id])
      daily.touch
      if daily.update(daily_params)
        render :json => daily
      else
        render :json => { error: "invalid url" }, status: :unprocessable_entity
      end
    end

    def destroy
      daily = Daily.find(params[:id])
      daily.destroy
      render json: {}
    end

    def index
      render json: current_user.dailies.order(:rank)
    end

    def show
      render json: Daily.find(params[:id])
    end

    private

    def daily_params
      params.require(:daily).permit(:title, :rank, :last_checked, :description, :strength)
    end
  end
end
