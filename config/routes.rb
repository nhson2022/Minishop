Rails.application.routes.draw do
  resources :orders
  root "pages#home"
  devise_for :users
  resources :products
  resources :categories
end
