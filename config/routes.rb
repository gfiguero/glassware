Rails.application.routes.draw do
  namespace :authorization do
    resources :worker_documents
    resources :scanned_frames
    resources :request_workerable_workers
    resources :request_workers
    resources :request_vehicles
    resources :request_type_worker_profile_document_types
    resources :request_type_worker_profiles
    resources :request_type_notificable_groups
    resources :request_type_notificable_exceptions
    resources :request_type_document_types
    resources :request_type_authorizing_groups
    resources :request_types
    resources :request_maps
    resources :request_document_type_documents
    resources :requests
    resources :provision_suppliers
    resources :provision_request_types
    resources :provisions
    resources :map_group_requests
  end

  namespace :aim do
    namespace :authorization do
      resources :history_states
      resources :group_requests
      resources :current_worker_documents
      resources :authorized_maps
    end

    namespace :core do
      resources :users
      resources :users_groups
      resources :groups
      resources :groups_profiles
      resources :profiles
      resources :profiles_roles
      resources :roles
      resources :maps
    end

    namespace :checklist do
      resources :checklists
      resources :checklist_tag_grade_weights
      resources :checklist_tags
      resources :checklist_step_interface_infrastructure_interfaces
      resources :checklist_step_interface_checklist_tags
      resources :checklist_step_interfaces
      resources :checklist_step_checklist_tags
      resources :checklist_steps
      resources :checklist_section_interface_groups
      resources :checklist_section_interfaces
      resources :checklist_sections
      resources :checklist_interface_maps
      resources :checklist_interface_info_groups
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
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
