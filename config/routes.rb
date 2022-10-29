# Rails.application.routes.draw do
#   devise_for :users
#   #get 'home/index'
#   root "home#index"
#   get 'corporate', to:'home#corporate'
#   get 'residential', to: 'home#residential'
#   get 'form', to: 'home#form'
#   get 'login', to: 'home#login'
#   get 'admin', to: 'home#admin'

Rails.application.routes.draw do
    devise_for :users
    #get 'home/index'
    root "home#index"
    get 'home/corporate'
    get 'home/residential'
    get 'home/form'
    get 'home/login'
    get 'home/admin'

end
