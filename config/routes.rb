Rails.application.routes.draw do
  resources :checklist_interface_groups
  resources :checklist_interface_custom_reports
  resources :checklist_interface_concepts
  resources :checklist_interfaces
  resources :checklist_grade_options
  resources :checklist_category_groups
  resources :checklist_categories_custom_reports
  resources :checklist_categories
  resources :checklist_answer_options_tags
  resources :checklist_answer_options
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
