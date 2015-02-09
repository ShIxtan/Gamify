module Api
  class HabitsController < ApiController
    def click
      @habit = Habit.find(params[:id])
      task_click = habit.task_clicks.new({sign: params[:sign]})

      if task_click.save
        @habit.update_strength
        render :show
      else
        render json: { error: "invalid url" }, status: :unprocessable_entity
      end
    end

    def create
      @habit = Habit.new(habit_params)
      @habit.user_id = current_user.id
      if @habit.save
        render :show
      else
        render json: { error: "invalid url" }, status: :unprocessable_entity
      end
    end

    def update
      @habit = Habit.find(params[:id])
      @habit.tag_ids = params[:tag_ids]
      if @habit.update(habit_params)
        render :show
      else
        render json: { error: "invalid url" }, status: :unprocessable_entity
      end
    end

    def destroy
      @habit = Habit.find(params[:id])
      @habit.destroy
      render json: {}
    end

    def index
      @habits = current_user.habits.order(:rank).includes(:tags)
      render :index
    end

    def show
      @habit = Habit.find(params[:id])
      render :show
    end

    private

    def habit_params
      params.require(:habit).permit(:title, :rank, :quality, :description, :sign, :tag_ids)
    end
  end
end
