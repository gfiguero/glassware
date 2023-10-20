Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "homepage#index"

  scope :sessions do
    devise_for :users, controllers: {
      confirmations: 'sessions/confirmations',
      onmiauth_callbacks: 'sessions/onmiauth_callbacks',
      passwords: 'sessions/passwords',
      registrations: 'sessions/registrations',
      sessions: 'sessions/sessions',
      unlocks: 'sessions/unlocks',
    }
  end

  resources :users
  resources :user_groups
  resources :groups_profiles
  resources :profiles_roles
  resources :groups
  resources :profiles
  resources :roles
  resources :maps

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  scope :api do
    scope :v7 do
      resources :maps
    end
  end

end
