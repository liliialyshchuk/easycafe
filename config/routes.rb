Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root 'welcome#index'
  get 'about',   to: 'pages#about'
  get 'gallery', to: 'pages#gallery'
  get 'contact', to: 'pages#contact'
  get 'vacancy', to: 'pages#vacancy'
  get 'cart',    to: 'pages#cart'
  get 'menu',    to: 'pages#menu'
  get 'account', to: 'pages#account'
end

# get 'welcome/new', to: 'welcome#new'
