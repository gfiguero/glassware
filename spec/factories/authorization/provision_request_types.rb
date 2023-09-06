FactoryBot.define do
  factory :authorization_provision_request_type, class: 'Authorization::ProvisionRequestType' do
    add_attribute(:provision_id) { 1 }
    add_attribute(:request_type_id) { 1 }
    add_attribute(:created_at) { "2023-09-06 15:18:26" }
    add_attribute(:updated_at) { "2023-09-06 15:18:26" }
    add_attribute(:deleted_at) { "2023-09-06 15:18:26" }
  end
end
