FactoryBot.define do
  factory :aim_core_map, class: 'Aim::Core::Map' do
    name { 'MyString' }
    top_left_x { 1.5 }
    top_left_y { 1.5 }
    max_zoom { 1 }
    bottom_right_x { 1.5 }
    max_resolution { 1.5 }
    bottom_right_y { 1.5 }
    stores_show_from_zoom { 1 }
    features_radius { 1 }
    range { 1 }
    street { 'MyString' }
    street_number { 1 }
    parent_id { 1 }
    lft { 1 }
    rgt { 1 }
    depth { 1 }
    kind { 'MyString' }
    last_update { '2023-08-28 19:19:15' }
    last_change { '2023-08-28 19:19:15' }
    zoom_matrix { '' }
    adjustment_data { '' }
    command_radius { 1.5 }
    command_latitude { 1.5 }
    command_longitude { 1.5 }
    time_between_notifications { 1.5 }
    max_notifications_per_period { 1 }
    notifications_time_period { 1.5 }
    scaled_stores { false }
    properties { '' }
    until_zoom { 1 }
    real_min_zoom { 1 }
    initial_zoom { 1 }
    authorization_user_manual_file_name { 'MyString' }
    authorization_user_manual_content_type { 'MyString' }
    authorization_user_manual_file_size { 1 }
    authorization_user_manual_updated_at { '2023-08-28 19:19:15' }
    loader_version { 1 }
    tiles_version { 1 }
    incident_positioning_system { 'MyString' }
    country_code { 'MyString' }
    region_code { 'MyString' }
    command_classification_id { 1 }
    command_district_id { 1 }
    command_orientation { 1.5 }
    fusion_table_on_start { false }
    time_zone { 'MyString' }
    deleted_at { '2023-08-28 19:19:15' }
    sales_room_m2 { 1.5 }
    property_type { 1 }
    cost_center { 'MyString' }
    show_custom_fields { false }
  end
end
