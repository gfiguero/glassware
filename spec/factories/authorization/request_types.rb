FactoryBot.define do
  factory :authorization_request_type, class: 'Authorization::RequestType' do
    add_attribute(:name) { "MyString" }
    add_attribute(:store) { 1 }
    add_attribute(:infrastructure) { 1 }
    add_attribute(:created_at) { "2023-09-06 15:18:34" }
    add_attribute(:updated_at) { "2023-09-06 15:18:34" }
    add_attribute(:map_id) { 1 }
    add_attribute(:description) { "MyText" }
    add_attribute(:deleted_at) { "2023-09-06 15:18:34" }
    add_attribute(:anticipation_time) { "MyString" }
    add_attribute(:add_description_to_email) { false }
    add_attribute(:global_map_options) { 1 }
    add_attribute(:attachment_number) { 1 }
    add_attribute(:check_store_request_auth) { false }
    add_attribute(:start_working_hour) { "2023-09-06 15:18:34" }
    add_attribute(:end_working_hours) { "2023-09-06 15:18:34" }
    add_attribute(:document_type_id) { 1 }
    add_attribute(:max_duration) { 1 }
    add_attribute(:max_workers_number) { 1 }
    add_attribute(:terms_and_conditions_to_save) { false }
    add_attribute(:from_hour_to_create) { "2023-09-06 15:18:34" }
    add_attribute(:until_hour_to_create) { "2023-09-06 15:18:34" }
    add_attribute(:show_declaration) { false }
    add_attribute(:update_until_approved) { false }
    add_attribute(:scope_type) { 1 }
    add_attribute(:min_workers_number) { 1 }
    add_attribute(:category) { 1 }
  end
end
