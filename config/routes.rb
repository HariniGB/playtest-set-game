Rails.application.routes.draw do
  root "games#index"
  resources :games
  resources :users
  resources :sessions, only: [:new,:create,:destroy]
  resources :games
end
