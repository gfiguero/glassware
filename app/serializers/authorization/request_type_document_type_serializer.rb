class Authorization::RequestTypeDocumentTypeSerializer < ActiveModel::Serializer
  attributes :id, :request_type_id, :name, :description, :validation_type, :created_at, :updated_at
end
