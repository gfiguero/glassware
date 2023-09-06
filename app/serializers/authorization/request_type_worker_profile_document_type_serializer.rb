class Authorization::RequestTypeWorkerProfileDocumentTypeSerializer < ActiveModel::Serializer
  attributes :id, :worker_profile_id, :document_type_id
end
