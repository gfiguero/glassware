FactoryBot.define do
  factory :authorization_worker_document, class: 'Authorization::WorkerDocument' do
    add_attribute(:contact_id) { 1 }
    add_attribute(:document_type_id) { 1 }
    add_attribute(:request_worker_profile_id) { 1 }
    add_attribute(:created_at) { "2023-09-06 15:18:52" }
    add_attribute(:updated_at) { "2023-09-06 15:18:52" }
    add_attribute(:file_file_name) { "MyString" }
    add_attribute(:file_content_type) { "MyString" }
    add_attribute(:file_file_size) { 1 }
    add_attribute(:file_updated_at) { "2023-09-06 15:18:52" }
    add_attribute(:state) { 1 }
    add_attribute(:expiration_date) { "2023-09-06 15:18:52" }
    add_attribute(:user_id) { 1 }
    add_attribute(:authorization_date) { "2023-09-06 15:18:52" }
    add_attribute(:workerable_worker_id) { 1 }
    add_attribute(:deleted_at) { "2023-09-06 15:18:52" }
    add_attribute(:worker_document_version_id) { 1 }
  end
end
