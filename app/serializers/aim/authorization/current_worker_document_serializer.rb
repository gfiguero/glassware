class Aim::Authorization::CurrentWorkerDocumentSerializer < ActiveModel::Serializer
  attributes :id, :request_workerable_worker_id, :worker_document_id
end
