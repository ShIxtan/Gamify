module Api
  class TodosController < ApiController
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
      render json: current_user.todos.order(:rank)
    end

    private

    def todo_params
      params.require(:todo).permit(:title, :rank, :description)
    end
  end
end
