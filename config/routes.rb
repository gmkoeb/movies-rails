Rails.application.routes.draw do
  root to: 'home#index'

  resources :genres, only: [:new, :create]
  resources :movies, only: [:show, :new, :create]
end
