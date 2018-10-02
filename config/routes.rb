Rails.application.routes.draw do
devise_for :companies, controllers: {
  sessions:      'companies/sessions',
  passwords:     'companies/passwords',
  registrations: 'companies/registrations'
}
devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}
  root to: "tops#index"
  resources :tops, only: [:index]
  resources :works, only: [:index, :new, :create, :show] do
    resources :forms, only: [:new, :update]
  end
  resources :columns, only: [:show, :index]
  resources :businesses, only: [:index]
  resources :faqs, only: [:index]
  resources :profiles, only: [:show, :edit, :create, :update]
  resources :users, only: [:edit, :update]
  resources :companies, only: [:show]
end
