Rails.application.routes.draw do
  
  resources :trips do
    resources :status_times
 end
  
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'

  root 'pages#home' 
  
  devise_for :users
  
  


end
