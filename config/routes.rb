Rails.application.routes.draw do
  devise_for :users
  root to: 'users#index'
  resources :products do
    resources :bookings
  end
  resources :users, only: %i[index show] do
    resources :products
    resources :bookings
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
