Rails.application.routes.draw do
  root to: 'home#index'
  get '/genre/:genre', to: 'genres#show'
  get '/director/:director', to: 'directors#show'
  resources :genres, only: [:new, :create]
  resources :movies, only: [:new, :create]
  resources :directors, only: [:new, :create]
end
