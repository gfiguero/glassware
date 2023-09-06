FactoryBot.define do
  factory :authorization_request, class: 'Authorization::Request' do
    add_attribute(:requester_id) { 1 }
    add_attribute(:request_type_id) { 1 }
    add_attribute(:interest_point_id) { 1 }
    add_attribute(:interest_point_type) { "MyString" }
    add_attribute(:state) { "MyString" }
    add_attribute(:from_time) { "2023-09-06 15:18:30" }
    add_attribute(:until_time) { "2023-09-06 15:18:30" }
    add_attribute(:from_time_num) { 1 }
    add_attribute(:until_time_num) { 1 }
    add_attribute(:created_at) { "2023-09-06 15:18:30" }
    add_attribute(:updated_at) { "2023-09-06 15:18:30" }
    add_attribute(:map_id) { 1 }
    add_attribute(:requester_kind) { 1 }
    add_attribute(:requester_role) { "MyString" }
    add_attribute(:requester_comments) { "MyText" }
    add_attribute(:supplier_comments) { "MyText" }
    add_attribute(:comments) { "MyText" }
    add_attribute(:supplier_id) { 1 }
    add_attribute(:requester_identification) { "MyString" }
    add_attribute(:requester_name) { "MyString" }
    add_attribute(:requester_phone) { "MyString" }
    add_attribute(:requester_email) { "MyString" }
    add_attribute(:authorized_at) { "2023-09-06 15:18:30" }
    add_attribute(:for_mall) { false }
    add_attribute(:payroll_workers_file_name) { "MyString" }
    add_attribute(:payroll_workers_content_type) { "MyString" }
    add_attribute(:payroll_workers_file_size) { 1 }
    add_attribute(:payroll_workers_updated_at) { "2023-09-06 15:18:30" }
    add_attribute(:slug) { "MyString" }
    add_attribute(:start_working_hour) { "2023-09-06 15:18:30" }
    add_attribute(:end_working_hour) { "2023-09-06 15:18:30" }
    add_attribute(:mixed) { 1 }
    add_attribute(:requester_type) { 1 }
    add_attribute(:deleted_at) { "2023-09-06 15:18:30" }
    add_attribute(:completion_time) { "2023-09-06 15:18:30" }
  end
end
