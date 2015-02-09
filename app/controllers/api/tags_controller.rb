module Api
  class TagsController < ApiController
    def create
      tag = Tag.new(tag_params)
      tag.user_id = current_user.id
      if tag.save
        render :json => tag
      else
        render :json => { error: "invalid url" }, status: :unprocessable_entity
      end
    end

    def update
      tag = Tag.find(params[:id])
      if tag.update(tag_params)
        render :json => tag
      else
        render :json => { error: "invalid url" }, status: :unprocessable_entity
      end
    end

    def destroy
      tag = Tag.find(params[:id])
      tag.destroy
      render json: {}
    end

    def index
      render json: current_user.tags
    end

    def show
      render json: Tag.find(params[:id])
    end

    private

    def tag_params
      params.require(:tag).permit(:name)
    end
  end
end
