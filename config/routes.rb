Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'index', to: 'pages#index'
  root 'pages#index'

  resources :calculator
  
  resources :properties
  
  resources :sectors
  
  resources :scenarios
  
  resources :rental_details

  resources :valuation_details
  
  resources :debts
  
  resources :setup_costs
  
end
