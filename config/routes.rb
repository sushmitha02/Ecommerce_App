Rails.application.routes.draw do
  resources :addresses
  devise_for :users
  get 'pages/contact', to: 'pages#contact'
  get 'pages/about', to: 'pages#about'
  get 'pages/cart', to: 'pages#cart'
  resources :products
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
