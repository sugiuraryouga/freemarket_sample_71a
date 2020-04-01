Rails.application.routes.draw do
  devise_for :users
  root "items#index"
  resources :users, only: [:index]
  resources :items, only: [:new,:show,:create] do
    collection do
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
    end
    end
end
