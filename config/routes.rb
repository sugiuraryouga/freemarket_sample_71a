Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, controllers:{
    registrations: "users/registrations"
  }
  root "items#index"
  resources :users, only: [:index , :show ]

  resources :orders, only: [:show]
  resources :items, only: [:new,:show , :create , :edit ,:update] do

    collection do
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
    end
    end
end
