Rails.application.routes.draw do
  root "pages#home"
  devise_for :users
  
  # for admin user
  namespace :admin do
    resources :categories
  end

  resources :products
  resources :orders
  resources :order_products
end
