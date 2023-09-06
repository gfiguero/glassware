class Authorization::ProvisionRequestTypeSerializer < ActiveModel::Serializer
  attributes :id, :provision_id, :request_type_id, :created_at, :updated_at, :deleted_at
end
