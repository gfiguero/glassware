class Authorization::MapGroupRequestSerializer < ActiveModel::Serializer
  attributes :id, :map_id, :group_id, :request_id, :authorizer_id, :state, :authorized_at, :message, :created_at, :updated_at, :slug
end
