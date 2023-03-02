Rails.application.routes.draw do
  devise_for :users
  root to: "transports#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :transports, only: [:home, :show, :new, :edit, :update, :create, :destroy] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show, :edit, :update, :detroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
