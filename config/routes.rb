Rails.application.routes.draw do
  resources :hoodies
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  root 'store#index'
end
