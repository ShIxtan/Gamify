module Api
  class DailiesController < ApiController
    def click
      @daily = Daily.find(params[:id])
      task_click = @daily.task_clicks.new({sign: params[:sign]})
      if task_click.save
        render json: task_click
        @daily.update_strength
      else
        render json: { error: "invalid url" }, status: :unprocessable_entity
      end
    end

    def create
      @daily = Daily.new(daily_params)
      @daily.user_id = current_user.id
      if @daily.save
        render :show
      else
        render json: { error: "invalid url" }, status: :unprocessable_entity
      end
    end

    def update
      @daily = Daily.find(params[:id])
      @daily.touch
      @daily.tag_ids = params[:tag_ids]
      if @daily.update(daily_params)
        render :show
      else
        render json: { error: "invalid url" }, status: :unprocessable_entity
      end
    end

    def destroy
      @daily = Daily.find(params[:id])
      @daily.destroy
      render json: {}
    end

    def index
      @dailies = current_user.dailies.order(:rank).includes(:tags)
      render :index
    end

    def show
      @daily = Daily.find(params[:id])
      render :show
    end

    private

    def daily_params
      params.require(:daily).permit(:title, :rank, :last_checked, :description, :strength, :tag_ids)
    end
  end
end
