Rails.application.routes.draw do
  get 'quotes/requestQuote'
  post '/request_quote', to: 'quotes#create'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  #get 'home/index'
  root "home#index"
  get 'home/corporate'
  get 'home/residential'
  get 'home/form'
  resources :quotes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
