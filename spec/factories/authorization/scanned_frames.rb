FactoryBot.define do
  factory :authorization_scanned_frame, class: 'Authorization::ScannedFrame' do
    add_attribute(:created_at) { "2023-09-06" }
    add_attribute(:map_id) { 1 }
    add_attribute(:frame_text) { "MyText" }
    add_attribute(:format_type) { "MyString" }
  end
end
