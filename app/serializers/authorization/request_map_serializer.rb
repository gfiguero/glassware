class Authorization::RequestMapSerializer < ActiveModel::Serializer
  attributes :id, :map_id, :request_id, :created_at, :updated_at
end
