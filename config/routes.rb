Rails.application.routes.draw do
  
  resources :trips
  resources :status_times
  resources :status_records
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'

  root 'pages#home' 
  
  devise_for :users
  
  


end
