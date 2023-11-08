Rails.application.routes.draw do
  resources :roles do
    collection do
      get :search
    end
  end
  resources :profiles do
    collection do
      get :search
    end
  end
  resources :groups do
    collection do
      get :search
    end
  end
  resources :users do
    collection do
      get :search
    end
  end
  resources :maps do
    collection do
      get :search
    end
  end

  # Defines the root path route ("/")
  root "homepage#index"

  get 'test/create' => 'homepage#create'
  get 'test/update' => 'homepage#update'
  get 'test/delete' => 'homepage#destroy'

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

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  scope :api do
    scope :v7 do
      resources :users
    end
  end

end
