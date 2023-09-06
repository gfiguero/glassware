FactoryBot.define do
  factory :authorization_request_worker, class: 'Authorization::RequestWorker' do
    add_attribute(:request_id) { 1 }
    add_attribute(:worker_id) { 1 }
    add_attribute(:created_at) { "2023-09-06 15:18:47" }
    add_attribute(:updated_at) { "2023-09-06 15:18:47" }
    add_attribute(:worker_profile_id) { 1 }
    add_attribute(:owner_type) { 1 }
    add_attribute(:workerable_id) { 1 }
    add_attribute(:workerable_type) { "MyString" }
  end
end
