class Authorization::RequestTypeNotificableExceptionSerializer < ActiveModel::Serializer
  attributes :id, :request_type_id, :user_id
end
