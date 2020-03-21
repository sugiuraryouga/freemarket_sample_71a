Rails.application.routes.draw do
  devise_for :users
  get 'user/index'
  root "items#index"
  resources :items, only: [:new]
  root to: "user#index"
end
