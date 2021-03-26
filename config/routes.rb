Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  root to: 'reviews#index'
  resources :stores do
    resources :reviews do
      resources :comments, only: [:create, :destroy]
    end
  end
  resources :users
end
