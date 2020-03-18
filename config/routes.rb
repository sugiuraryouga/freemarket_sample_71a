Rails.application.routes.draw do
  devise_for :users
  get 'user/index'
  root "items#index"
  root to: "user#index"
end
