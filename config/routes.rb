Rails.application.routes.draw do
  
  root 'packages#index'

  resources :packages, only: [:new, :show, :create]

end
