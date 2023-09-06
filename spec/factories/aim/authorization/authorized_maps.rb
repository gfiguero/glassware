FactoryBot.define do
  factory :aim_authorization_authorized_map, class: 'Aim::Authorization::AuthorizedMap' do
    add_attribute(:request_id) { 1 }
    add_attribute(:map_id) { 1 }
    add_attribute(:state) { "MyString" }
    add_attribute(:authorized_at) { "2023-09-06 15:18:17" }
    add_attribute(:created_at) { "2023-09-06 15:18:17" }
    add_attribute(:updated_at) { "2023-09-06 15:18:17" }
  end
end
