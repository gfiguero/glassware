FactoryBot.define do
  factory :authorization_request_map, class: 'Authorization::RequestMap' do
    add_attribute(:map_id) { 1 }
    add_attribute(:request_id) { 1 }
    add_attribute(:created_at) { "2023-09-06 15:18:33" }
    add_attribute(:updated_at) { "2023-09-06 15:18:33" }
  end
end
