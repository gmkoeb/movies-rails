Rails.application.routes.draw do
  root to: 'home#index'
  get '/directors', to: 'directors#directors'
  get '/genres', to: 'genres#genres'
  get '/movies', to: 'movies#movies'

  get '/genres/details/:genre', to: 'genres#genre'
  get '/directors/details/:director', to: 'directors#director'
  get '/movies/details/:movie', to: 'movies#movie'

  resources :genres, only: [:new, :create, :edit, :update]
  resources :movies, only: [:new, :create, :edit, :update]
  resources :directors, only: [:new, :create, :edit, :update]
end
