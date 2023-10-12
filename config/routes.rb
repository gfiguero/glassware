Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  scope :api do
    scope :v7 do
      resources :maps
    end
  end

  # Defines the root path route ("/")
  root "homepage#index"
end
