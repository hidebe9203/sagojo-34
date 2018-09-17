Rails.application.routes.draw do
  devise_for :users
  root "tops#show"
  resource :test
  resource :tops, only: [:show]
end
