Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'products/new'
  get 'products/show'

  get 'users/new'
  get 'users/show'


  #RESTFUL routes
  resources :products
  resources :users


end
