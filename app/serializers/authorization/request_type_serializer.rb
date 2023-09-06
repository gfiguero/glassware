class Authorization::RequestTypeSerializer < ActiveModel::Serializer
  attributes :id, :name, :store, :infrastructure, :created_at, :updated_at, :map_id, :description, :deleted_at, :anticipation_time, :add_description_to_email, :global_map_options, :attachment_number, :check_store_request_auth, :start_working_hour, :end_working_hours, :document_type_id, :max_duration, :max_workers_number, :terms_and_conditions_to_save, :from_hour_to_create, :until_hour_to_create, :show_declaration, :update_until_approved, :scope_type, :min_workers_number, :category
end
