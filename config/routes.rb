
Rails.application.routes.draw do
  
  resources :customers
  resources :employees
  resources :buildings_details
  resources :columns
  resources :buildings
  resources :batteries
  resources :elevators  
  resources :addresses
  resources :leads
  resources :lists, only: [:index, :show, :create, :update, :destroy] do
    resources :items, except: [:new]
  end
  devise_for :users
  get 'quotes/requestQuote'
  post '/request_quote', to: 'quotes#create'
  post '/form_submit', to: 'lead#create'



  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    root "home#index"
    get 'home/corporate'
    get 'home/residential'
    get 'home/form'
    get 'home/login'
    get 'home/admin'
    get 'home/barchart'
  resources :quotes
  # For details on the DSL this file, see http://guides.rubyonrails.org/routing.html

end
