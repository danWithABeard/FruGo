Rails.application.routes.draw do
  
  resources :shipments

  root 'shipments#new'

  resources :packages, only: [:new, :show, :create, :edit]

end
