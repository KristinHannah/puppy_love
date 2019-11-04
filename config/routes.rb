Rails.application.routes.draw do
  resources :matches
  resources :atts_tables
  resources :dog_breeds
  resources :users
  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/facebook', as: 'facebook_login'
  post '/logout' => 'sessions#destroy'
  


    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
  end