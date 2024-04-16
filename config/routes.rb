Rails.application.routes.draw do
  devise_for :users
  
  root "home#index"

  get :dashboard, to: "dashboard#index"
  
  resources :tweets, only: :create

  resources :usernames, only: [:new, :update]
end