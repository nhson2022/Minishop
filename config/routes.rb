Rails.application.routes.draw do
  resources :categories
  root "pages#home"
  devise_for :users
end
