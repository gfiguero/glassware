FactoryBot.define do
  factory :authorization_request_type_worker_profile_document_type, class: 'Authorization::RequestTypeWorkerProfileDocumentType' do
    add_attribute(:worker_profile_id) { 1 }
    add_attribute(:document_type_id) { 1 }
  end
end
