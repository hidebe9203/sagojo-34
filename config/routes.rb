Rails.application.routes.draw do
  root to: "tops#show"
  resource :tops, only: [:show]
end
