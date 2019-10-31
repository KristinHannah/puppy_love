Rails.application.routes.draw do
  resources :matches
  resources :attributes
  resources :dog_breeds
  resources :users
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
  end