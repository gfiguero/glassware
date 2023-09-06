class Aim::Authorization::AuthorizedMapSerializer < ActiveModel::Serializer
  attributes :id, :request_id, :map_id, :state, :authorized_at, :created_at, :updated_at
end
