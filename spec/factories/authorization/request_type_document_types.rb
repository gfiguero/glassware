FactoryBot.define do
  factory :authorization_request_type_document_type, class: 'Authorization::RequestTypeDocumentType' do
    add_attribute(:request_type_id) { 1 }
    add_attribute(:name) { "MyString" }
    add_attribute(:description) { "MyText" }
    add_attribute(:validation_type) { 1 }
    add_attribute(:created_at) { "2023-09-06 15:18:38" }
    add_attribute(:updated_at) { "2023-09-06 15:18:38" }
  end
end
