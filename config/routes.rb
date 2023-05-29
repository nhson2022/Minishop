Rails.application.routes.draw do
  root "pages#home"
  devise_for :users

  # for admin
  namespace :admin do
    resources :categories
    resources :products
  end
  # for user
  resources :products, only: [] do
    get "/" => "products#index", on: :collection, as: :list
    get "/:id" => "products#show", on: :collection, as: :detail
  end

  resources :orders
  resources :order_products
end
