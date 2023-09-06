class Authorization::RequestWorkerSerializer < ActiveModel::Serializer
  attributes :id, :request_id, :worker_id, :created_at, :updated_at, :worker_profile_id, :owner_type, :workerable_id, :workerable_type
end
