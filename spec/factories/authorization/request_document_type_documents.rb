FactoryBot.define do
  factory :authorization_request_document_type_document, class: 'Authorization::RequestDocumentTypeDocument' do
    add_attribute(:request_id) { 1 }
    add_attribute(:document_type_id) { 1 }
    add_attribute(:document_id) { 1 }
  end
end
