Rails.application.routes.draw do

 get 'users/index'
 root "pages#index"
 get '/about', to:"pages#about"
 get '/contact', to:"pages#contact"
 get '/signup', to: 'users#new'

get    '/login',   to: 'sessions#new'
post   '/login',   to: 'sessions#create'
delete '/logout',  to: 'sessions#destroy'
#get '/attendance', to: ''
resources :users

end
