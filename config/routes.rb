Rails.application.routes.draw do
  devise_for :users
  root to: "tops#show"
  resource :tops, only: [:show]
  resources :works, only: [:index, :show]
end
