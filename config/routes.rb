Rails.application.routes.draw do
  
  root 'packages#new'

  resources :packages, only: [:new, :show, :create, :edit]

end
