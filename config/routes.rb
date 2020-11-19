Rails.application.routes.draw do
  devise_for :users
  root to: 'routines#index'
  resources :routines do
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end
  resources :users, only: :show
end
