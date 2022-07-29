Rails.application.routes.draw do
  devise_for :users
  root to: 'users#index'
  resources :products do
    delete "/products/:id", to: "products#destroy"
    resources :bookings
  end

  resources :users, only: %i[index show] do
    resources :products
    get "/dashboard", to: "dashboards#index"
    delete "/products/:id", to: "dashboards#destroy"
    resources :bookings
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
