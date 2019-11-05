Rails.application.routes.draw do
  resources :matches
  resources :atts_tables
  resources :dog_breeds
  resources :users, only: [:index, :new]
  resources :users, only: [:show] do 
    resources :matches, only: [:show, :index, :destroy]
  end 
  get '/login' => 'sessions#new'
  get '/signup' => 'users#new'
  post '/sessions' => 'sessions#create'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/facebook', as: 'facebook_login'
  post '/logout' => 'sessions#destroy'
  root 'application#index'
  


    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
  end