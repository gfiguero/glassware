FactoryBot.define do
  factory :authorization_map_group_request, class: 'Authorization::MapGroupRequest' do
    add_attribute(:map_id) { 1 }
    add_attribute(:group_id) { 1 }
    add_attribute(:request_id) { 1 }
    add_attribute(:authorizer_id) { 1 }
    add_attribute(:state) { "MyString" }
    add_attribute(:authorized_at) { "2023-09-06 15:18:23" }
    add_attribute(:message) { "MyText" }
    add_attribute(:created_at) { "2023-09-06 15:18:23" }
    add_attribute(:updated_at) { "2023-09-06 15:18:23" }
    add_attribute(:slug) { "MyString" }
  end
end
