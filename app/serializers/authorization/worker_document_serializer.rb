class Authorization::WorkerDocumentSerializer < ActiveModel::Serializer
  attributes :id, :contact_id, :document_type_id, :request_worker_profile_id, :created_at, :updated_at, :file_file_name, :file_content_type, :file_file_size, :file_updated_at, :state, :expiration_date, :user_id, :authorization_date, :workerable_worker_id, :deleted_at, :worker_document_version_id
end
