FactoryBot.define do
  factory :aim_core_map, class: 'Aim::Core::Map' do
    add_attribute(:name) { "MyString" }
    add_attribute(:top_left_x) { 1.5 }
    add_attribute(:top_left_y) { 1.5 }
    add_attribute(:max_zoom) { 1 }
    add_attribute(:bottom_right_x) { 1.5 }
    add_attribute(:max_resolution) { 1.5 }
    add_attribute(:bottom_right_y) { 1.5 }
    add_attribute(:stores_show_from_zoom) { 1 }
    add_attribute(:features_radius) { 1 }
    add_attribute(:range) { 1 }
    add_attribute(:street) { "MyString" }
    add_attribute(:street_number) { 1 }
    add_attribute(:parent_id) { 1 }
    add_attribute(:lft) { 1 }
    add_attribute(:rgt) { 1 }
    add_attribute(:depth) { 1 }
    add_attribute(:kind) { "MyString" }
    add_attribute(:alias) { "MyString" }
    add_attribute(:created_at) { "2023-09-04 15:58:48" }
    add_attribute(:updated_at) { "2023-09-04 15:58:48" }
    add_attribute(:last_update) { "2023-09-04 15:58:48" }
    add_attribute(:last_change) { "2023-09-04 15:58:48" }
    add_attribute(:zoom_matrix) { "" }
    add_attribute(:adjustment_data) { "" }
    add_attribute(:map_radius) { 1.5 }
    add_attribute(:map_latitude) { 1.5 }
    add_attribute(:map_longitude) { 1.5 }
    add_attribute(:time_between_notifications) { 1.5 }
    add_attribute(:max_notifications_per_period) { 1 }
    add_attribute(:notifications_time_period) { 1.5 }
    add_attribute(:scaled_stores) { false }
    add_attribute(:properties) { "" }
    add_attribute(:until_zoom) { 1 }
    add_attribute(:real_min_zoom) { 1 }
    add_attribute(:initial_zoom) { 1 }
    add_attribute(:authorization_user_manual_file_name) { "MyString" }
    add_attribute(:authorization_user_manual_content_type) { "MyString" }
    add_attribute(:authorization_user_manual_file_size) { 1 }
    add_attribute(:authorization_user_manual_updated_at) { "2023-09-04 15:58:48" }
    add_attribute(:loader_version) { 1 }
    add_attribute(:tiles_version) { 1 }
    add_attribute(:incident_positioning_system) { "MyString" }
    add_attribute(:country_code) { "MyString" }
    add_attribute(:region_code) { "MyString" }
    add_attribute(:map_classification_id) { 1 }
    add_attribute(:map_district_id) { 1 }
    add_attribute(:map_orientation) { 1.5 }
    add_attribute(:fusion_table_on_start) { false }
    add_attribute(:time_zone) { "MyString" }
    add_attribute(:deleted_at) { "2023-09-04 15:58:48" }
    add_attribute(:sales_room_m2) { 1.5 }
    add_attribute(:property_type) { 1 }
    add_attribute(:cost_center) { "MyString" }
    add_attribute(:show_custom_fields) { false }
  end
end
