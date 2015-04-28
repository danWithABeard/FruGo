Rails.application.routes.draw do
  
  resources :shipments

  root 'shipments#index'

  resources :packages, only: [:new, :show, :create, :edit]

end
