Rails.application.routes.draw do
  get 'purchase/index'
  get 'purchase/done'
  get 'card/show'
  devise_for :users
  root "items#index"
  resources :users, only: [:index , :show]

  resources :orders, only: [:show]
  resources :items, only: [:new,:show , :create] do
    resources :card, only: [:index] do
      collection do
        post 'pay', to: 'card#pay'
        get 'done', to: 'card#done'
      end
    end

    collection do
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
    end

    end
  
  
    resources :card, only: [:new,:create] do
      collection do
        post 'delete', to: 'card#delete'
      end
     end

end
