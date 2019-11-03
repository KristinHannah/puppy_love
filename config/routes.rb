Rails.application.routes.draw do
  resources :matches
  resources :attributes
  resources :dog_breeds
  resources :users
  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/auth/facebook' as 'facebook_login'
  get '/auth/:provider/callback' => 'sessions#create'
  root 'application#index'


    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
  end