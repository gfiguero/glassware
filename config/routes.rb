Rails.application.routes.draw do
  namespace :aim do
    namespace :core do
      resources :users
      resources :roles
      resources :profiles
      resources :groups
      resources :maps
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
