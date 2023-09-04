Rails.application.routes.draw do
  namespace :aim do
    namespace :core do
      resources :users_groups
      resources :groups_profiles
      resources :profiles_roles
      resources :users
      resources :roles
      resources :profiles
      resources :groups
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
