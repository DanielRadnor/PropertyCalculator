Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'index', to: 'pages#index'
  root 'pages#index'

  resources :calculator
  
  resources :properties
  
  resources :sectors

end
