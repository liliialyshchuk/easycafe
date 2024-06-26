Rails.application.routes.draw do

  resources :feedbacks
    resources :categories
    devise_for :admin_users, ActiveAdmin::Devise.config
    ActiveAdmin.routes(self)
    resources :dishes
    devise_for :users

  scope "(:locale)", locale: /en|uk/ do
    root 'welcome#index'
    get 'vacancy',     to: 'pages#vacancy'
    get 'gallery',     to: 'pages#gallery'
    get 'contact',     to: 'pages#contact'
    get 'cart',        to: 'pages#cart'
    get 'delivery',    to: 'pages#delivery'
    get 'policy',      to: 'pages#policy'
    get 'offer',       to: 'pages#offer'
  end
end

# get 'welcome/new', to: 'welcome#new'
