class Authorization::RequestTypeWorkerProfileSerializer < ActiveModel::Serializer
  attributes :id, :name, :request_type_id, :validation_type, :default, :workerable_type
end
