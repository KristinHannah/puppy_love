Rails.application.routes.draw do
  resources :matches

  resources :atts_tables

  resources :dog_breeds

  resources :users

  resources :users, only: [:show, :index] do 
    resources :matches, only: [:show, :index, :destroy]
  end 

  resources :users, only: [:show, :index] do 
    resources :atts_tables, only: [:show, :new]
  end 

  get '/login' => 'sessions#new'
  get '/signup' => 'users#new'
  post '/sessions' => 'sessions#create'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/facebook', as: 'facebook_login'
  post '/logout' => 'sessions#destroy'
  root 'application#index'
  get '/entry' => 'application#entry'

  match "/404" => "errors#not_found", :via => :all
  match "/500" => "errors#internal_server_error", :via => :all

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
  end