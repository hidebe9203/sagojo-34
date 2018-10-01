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
  resources :works do
    resources :forms, only: [:new, :update]
  end
  resources :columns
  resources :businesses, only: [:index]
  resources :faqs
  resources :profiles, only: [:show, :edit, :create, :update]
  resources :users, only: [:edit, :update]
  resources :companies, only: [:show]
end
