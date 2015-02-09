Rails.application.routes.draw do
  root to: 'static_pages#root'

  resources :users, only: [:new, :create, :show]
  resource :session, only: [:new, :create, :destroy, :show]

  namespace :api, defaults: { format: :json } do
    resources :habits, only: [:create, :destroy, :index, :update, :show]
    resources :dailies, only: [:create, :destroy, :index, :update, :show]
    resources :todos, only: [:create, :destroy, :update, :index, :show]
    resources :rewards, only: [:create, :destroy, :update, :index, :show]
    resources :tags, only: [:create, :destroy, :update, :index, :show]
    resources :users, only: [:show, :update]
    resource :users, only: [:show]
  end

  post 'api/habits/:id/click', to: "api/habits#click"
  post 'api/dailies/:id/click', to: "api/dailies#click"
  post 'api/todos/:id/click', to: "api/todos#click"
  post 'api/rewards/:id/click', to: "api/rewards#click"
end
