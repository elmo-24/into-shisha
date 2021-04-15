Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  root to: 'stores#index'

  get '/stores/searchstore',  to: 'stores#search_store'
  resources :stores do
    collection do
      get 'search'
    end
    resources :reviews do
      resources :comments, only: [:create, :destroy]
    end
  end
  resources :users
end
