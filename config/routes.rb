Rails.application.routes.draw do
  root to: 'static_pages#root'

  resources :users, only: [:new, :create, :show]
  resource :session, only: [:new, :create, :destroy, :show]

  namespace :api, defaults: { format: :json } do
    resources :habits, only: [:create, :destroy, :index, :update]
    resources :dailies, only: [:create, :destroy, :index, :update]
  end
end
