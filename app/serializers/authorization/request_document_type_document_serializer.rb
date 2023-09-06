class Authorization::RequestDocumentTypeDocumentSerializer < ActiveModel::Serializer
  attributes :id, :request_id, :document_type_id, :document_id
end
