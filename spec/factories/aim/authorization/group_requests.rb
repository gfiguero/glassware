FactoryBot.define do
  factory :aim_authorization_group_request, class: 'Aim::Authorization::GroupRequest' do
    add_attribute(:request_id) { 1 }
    add_attribute(:authorizer_id) { 1 }
    add_attribute(:group_id) { 1 }
    add_attribute(:state) { "MyString" }
    add_attribute(:created_at) { "2023-09-06 15:18:20" }
    add_attribute(:updated_at) { "2023-09-06 15:18:20" }
    add_attribute(:authorized_at) { "2023-09-06 15:18:20" }
    add_attribute(:message) { "MyText" }
  end
end
