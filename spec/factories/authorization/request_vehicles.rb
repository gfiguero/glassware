FactoryBot.define do
  factory :authorization_request_vehicle, class: 'Authorization::RequestVehicle' do
    add_attribute(:request_id) { 1 }
    add_attribute(:vehicle_id) { 1 }
    add_attribute(:created_at) { "2023-09-06 15:18:46" }
    add_attribute(:updated_at) { "2023-09-06 15:18:46" }
  end
end
