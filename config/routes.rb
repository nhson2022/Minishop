Rails.application.routes.draw do
  root "pages#home"
  devise_for :users
  resources :categories
  resources :products
  resources :orders
  resources :order_products
end
