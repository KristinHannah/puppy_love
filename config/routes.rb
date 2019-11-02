Rails.application.routes.draw do
  resources :matches
  resources :attributes
  resources :dog_breeds
  resources :users
  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
  end