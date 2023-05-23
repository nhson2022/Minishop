Rails.application.routes.draw do
  root "pages#home"
  devise_for :users
  resources :products
  resources :categories
  resources :order_products
  resources :orders
end
