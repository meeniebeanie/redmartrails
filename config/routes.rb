Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/about'

  get 'static_pages/help'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'products/new'
  get 'products/show'

  get 'users/new'
  get 'users/show'


  #RESTFUL routes
  resources :products
  resources :users


end
