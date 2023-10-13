Rails.application.routes.draw do
  root to: 'home#index'
  get '/:genre', to: 'genres#show'
  get '/:director', to: 'directors#show'
  resources :genres, only: [:new, :create]
  resources :movies, only: [:show, :new, :create]
  resources :directors, only: [:show, :new, :create]
end
