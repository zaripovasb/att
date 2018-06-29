Rails.application.routes.draw do
 root "pages#index"
 get '/about', to:"pages#about"
 get '/contact', to:"pages#contact"


  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

end
