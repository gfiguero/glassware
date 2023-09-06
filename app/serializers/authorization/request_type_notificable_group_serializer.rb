class Authorization::RequestTypeNotificableGroupSerializer < ActiveModel::Serializer
  attributes :id, :request_type_id, :group_id, :created_at, :updated_at, :deleted_at
end
