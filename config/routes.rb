# Rails.application.routes.draw do
  
 # resources :batteries
#   devise_for :users
#   #get 'home/index'
#   root "home#index"
#   get 'corporate', to:'home#corporate'
#   get 'residential', to: 'home#residential'
#   get 'form', to: 'home#form'
#   get 'login', to: 'home#login'
#   get 'admin', to: 'home#admin'

Rails.application.routes.draw do
    
  
  resources :batteries
  devise_for :users
  get 'quotes/requestQuote'
  post '/request_quote', to: 'quotes#create'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  #get 'home/index'
    root "home#index"
    get 'home/corporate'
    get 'home/residential'
    get 'home/form'
    get 'home/login'
    get 'home/admin'

  resources :quotes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
