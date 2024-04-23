Rails.application.routes.draw do
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
