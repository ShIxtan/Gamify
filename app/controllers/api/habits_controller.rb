module Api
  class HabitsController < ApiController
    def click
      habit = Habit.find(params[:id])
      task_click = habit.task_clicks.new({sign: params[:sign]})
      if task_click.save
        render :json => habit.update_strength
      else
        render :json => { error: "invalid url" }, status: :unprocessable_entity
      end
    end

    def create
      habit = Habit.new(habit_params)
      habit.user_id = current_user.id
      if habit.save
        render :json => habit
      else
        render :json => { error: "invalid url" }, status: :unprocessable_entity
      end
    end

    def update
      habit = Habit.find(params[:id])
      if habit.update(habit_params)
        render :json => habit
      else
        render :json => { error: "invalid url" }, status: :unprocessable_entity
      end
    end

    def destroy
      habit = Habit.find(params[:id])
      habit.destroy
      render json: {}
    end

    def index
      @habits = current_user.habits.order(:rank).includes(:tags)
      render :index
    end

    def show
      render json: Habit.find(params[:id])
    end

    private

    def habit_params
      params.require(:habit).permit(:title, :rank, :quality, :description, :sign)
    end
  end
end
