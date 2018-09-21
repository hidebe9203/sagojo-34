Rails.application.routes.draw do
  devise_for :users
  root to: "tops#index"
  resources :tops, only: [:index]
  resources :works
  resources :columns
  resources :businesses, only: [:index]
end
