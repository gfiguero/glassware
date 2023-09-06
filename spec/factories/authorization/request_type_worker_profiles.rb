FactoryBot.define do
  factory :authorization_request_type_worker_profile, class: 'Authorization::RequestTypeWorkerProfile' do
    add_attribute(:name) { "MyString" }
    add_attribute(:request_type_id) { 1 }
    add_attribute(:validation_type) { 1 }
    add_attribute(:default) { false }
    add_attribute(:workerable_type) { 1 }
  end
end
