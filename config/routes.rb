Rails.application.routes.draw do
  #get 'users/show'
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords:  'users/passwords',
    registrations: 'users/registrations'
  }
  root to: 'home#index'
  resources :users, only: [:show]
  resources :posts, only: [:create]
  get"users/:id",to:"users#show"
end
