class Aim::Authorization::GroupRequestSerializer < ActiveModel::Serializer
  attributes :id, :request_id, :authorizer_id, :group_id, :state, :created_at, :updated_at, :authorized_at, :message
end
