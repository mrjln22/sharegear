Rails.application.routes.draw do
  devise_for :users
  root to: 'users#index'
  resources :products, only: :index
  resources :bookings
  get 'users/index'
  get 'users/show'
  get "products", to: "products#index"
  get "products/:id", to: "products#show", as: :product

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
