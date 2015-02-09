module Api
  class TodosController < ApiController
    def click
      todo = Todo.find(params[:id])
      task_click = todo.task_clicks.new({sign: params[:sign]})
      if task_click.save
        render :json => task_click
      else
        render :json => { error: "invalid url" }, status: :unprocessable_entity
      end
    end

    def create
      todo = Todo.new(todo_params)
      todo.user_id = current_user.id
      if todo.save
        render :json => todo
      else
        render :json => { error: "invalid url" }, status: :unprocessable_entity
      end
    end

    def update
      todo = Todo.find(params[:id])
      if todo.update(todo_params)
        render :json => todo
      else
        render :json => { error: "invalid url" }, status: :unprocessable_entity
      end
    end

    def destroy
      todo = Todo.find(params[:id])
      todo.destroy
      render json: {}
    end

    def index
      current_user.todos.each do |todo|
        if todo.days_since_created > 4
          todo.strength = 1
          todo.save
        elsif todo.days_since_created > 2
          todo.strength = 2
          todo.save
        end
      end

      @todos = current_user.todos.order(:rank).includes(:tags)
      render :index
    end

    def show
      render json: Todo.find(params[:id])
    end

    private

    def todo_params
      params.require(:todo).permit(:title, :rank, :description, :tag_ids)
    end
  end
end
