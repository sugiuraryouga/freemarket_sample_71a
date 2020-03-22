Rails.application.routes.draw do
  devise_for :users
  # get 'user/index'
  root "items#index"
  resources :users, only: [:index]
  resources :items, only: [:new,:show]
  # root to: "user#index"
end
