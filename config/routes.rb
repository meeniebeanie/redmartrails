Rails.application.routes.draw do

  #Static Pages
  root 'static_pages#home'

  get '/about', to: 'static_pages#about'

  get '/help', to: 'static_pages#help'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'products/new'
  get 'products/show'

  get '/signup', to: 'users#new'


  #RESTFUL routes
  resources :products
  resources :users


end
