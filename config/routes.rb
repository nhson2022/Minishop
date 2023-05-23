Rails.application.routes.draw do
  root "pages#home"
  devise_for :users
  resources :products
  resources :categories
end
