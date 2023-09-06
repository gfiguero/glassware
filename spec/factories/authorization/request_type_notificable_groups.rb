FactoryBot.define do
  factory :authorization_request_type_notificable_group, class: 'Authorization::RequestTypeNotificableGroup' do
    add_attribute(:request_type_id) { 1 }
    add_attribute(:group_id) { 1 }
    add_attribute(:created_at) { "2023-09-06 15:18:41" }
    add_attribute(:updated_at) { "2023-09-06 15:18:41" }
    add_attribute(:deleted_at) { "2023-09-06 15:18:41" }
  end
end
