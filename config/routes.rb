Rails.application.routes.draw do
  resources :line_items
  resources :carts
  resources :hoodies
  resources :charges, only: [:new, :create]
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  root 'hoodies#index'
end
