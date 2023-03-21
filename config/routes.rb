Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :weights, only: [:index, :create]
  root 'weights#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
