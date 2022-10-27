Rails.application.routes.draw do
  #get 'home/index'
  root "home#index"
  get 'corporate', to:'home#corporate'
  get 'residential', to: 'home#residential'
  get 'form', to: 'home#form'
  get 'login', to: 'home#login'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
