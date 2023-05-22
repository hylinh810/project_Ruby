Rails.application.routes.draw do
  resources :carts
  resources :user
  resources :monkhac
  resources :nuocuong
  resources :instruments
  resources :line_items
  devise_for :users, controller: {
    registrations: 'registrations'
  }
  root 'user#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
