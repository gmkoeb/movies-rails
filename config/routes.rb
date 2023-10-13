Rails.application.routes.draw do
  root to: 'home#index'
  get '/directors', to: 'directors#show'
  get '/genres', to: 'genres#show'

  get '/genres/details/:genre', to: 'genres#genre'
  get '/directors/details/:director', to: 'directors#director'

  resources :genres, only: [:new, :create]
  resources :movies, only: [:new, :create]
  resources :directors, only: [:show, :new, :create]
end
