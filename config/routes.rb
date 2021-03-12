Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :bicycles
      resources :order_items, only: %i[create update destroy]
      resource :orders, only: [:show]
    end
  end
end
