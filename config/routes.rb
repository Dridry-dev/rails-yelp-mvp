Rails.application.routes.draw do
  get 'restaurants/index'
  get 'restaurants/new'
  get 'restaurants/create'
  get 'restaurants/show'
  get 'reviews/index'
  get 'reviews/new'
  get 'reviews/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'restaurants#index'
  resources :restaurants, only: %i[index new create show] do
    resources :reviews, only: %i[index create]
  end
  # resources :reviews, only: %i[show edit update destroy]
end
