Rails.application.routes.draw do
  devise_for :users
  root to: "transports#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :transports, only: [:home, :show, :new, :create]
  # Defines the root path route ("/")
  # root "articles#index"
end
