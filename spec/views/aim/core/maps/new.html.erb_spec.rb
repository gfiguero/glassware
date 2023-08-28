require 'rails_helper'

RSpec.describe('aim/core/maps/new', type: :view) do
  before(:each) do
    assign(:aim / core_map, Aim::Core::Map.new(
                              name: 'MyString',
                              top_left_x: 1.5,
                              top_left_y: 1.5,
                              max_zoom: 1,
                              bottom_right_x: 1.5,
                              max_resolution: 1.5,
                              bottom_right_y: 1.5,
                              stores_show_from_zoom: 1,
                              features_radius: 1,
                              range: 1,
                              street: 'MyString',
                              street_number: 1,
                              parent_id: 1,
                              lft: 1,
                              rgt: 1,
                              depth: 1,
                              kind: 'MyString',
                              zoom_matrix: '',
                              adjustment_data: '',
                              command_radius: 1.5,
                              command_latitude: 1.5,
                              command_longitude: 1.5,
                              time_between_notifications: 1.5,
                              max_notifications_per_period: 1,
                              notifications_time_period: 1.5,
                              scaled_stores: false,
                              properties: '',
                              until_zoom: 1,
                              real_min_zoom: 1,
                              initial_zoom: 1,
                              authorization_user_manual_file_name: 'MyString',
                              authorization_user_manual_content_type: 'MyString',
                              authorization_user_manual_file_size: 1,
                              loader_version: 1,
                              tiles_version: 1,
                              incident_positioning_system: 'MyString',
                              country_code: 'MyString',
                              region_code: 'MyString',
                              command_classification_id: 1,
                              command_district_id: 1,
                              command_orientation: 1.5,
                              fusion_table_on_start: false,
                              time_zone: 'MyString',
                              sales_room_m2: 1.5,
                              property_type: 1,
                              cost_center: 'MyString',
                              show_custom_fields: false,
                            ))
  end

  it 'renders new aim/core_map form' do
    render

    assert_select 'form[action=?][method=?]', aim_core_maps_path, 'post' do
      assert_select 'input[name=?]', 'aim/core_map[name]'

      assert_select 'input[name=?]', 'aim/core_map[top_left_x]'

      assert_select 'input[name=?]', 'aim/core_map[top_left_y]'

      assert_select 'input[name=?]', 'aim/core_map[max_zoom]'

      assert_select 'input[name=?]', 'aim/core_map[bottom_right_x]'

      assert_select 'input[name=?]', 'aim/core_map[max_resolution]'

      assert_select 'input[name=?]', 'aim/core_map[bottom_right_y]'

      assert_select 'input[name=?]', 'aim/core_map[stores_show_from_zoom]'

      assert_select 'input[name=?]', 'aim/core_map[features_radius]'

      assert_select 'input[name=?]', 'aim/core_map[range]'

      assert_select 'input[name=?]', 'aim/core_map[street]'

      assert_select 'input[name=?]', 'aim/core_map[street_number]'

      assert_select 'input[name=?]', 'aim/core_map[parent_id]'

      assert_select 'input[name=?]', 'aim/core_map[lft]'

      assert_select 'input[name=?]', 'aim/core_map[rgt]'

      assert_select 'input[name=?]', 'aim/core_map[depth]'

      assert_select 'input[name=?]', 'aim/core_map[kind]'

      assert_select 'input[name=?]', 'aim/core_map[zoom_matrix]'

      assert_select 'input[name=?]', 'aim/core_map[adjustment_data]'

      assert_select 'input[name=?]', 'aim/core_map[command_radius]'

      assert_select 'input[name=?]', 'aim/core_map[command_latitude]'

      assert_select 'input[name=?]', 'aim/core_map[command_longitude]'

      assert_select 'input[name=?]', 'aim/core_map[time_between_notifications]'

      assert_select 'input[name=?]', 'aim/core_map[max_notifications_per_period]'

      assert_select 'input[name=?]', 'aim/core_map[notifications_time_period]'

      assert_select 'input[name=?]', 'aim/core_map[scaled_stores]'

      assert_select 'input[name=?]', 'aim/core_map[properties]'

      assert_select 'input[name=?]', 'aim/core_map[until_zoom]'

      assert_select 'input[name=?]', 'aim/core_map[real_min_zoom]'

      assert_select 'input[name=?]', 'aim/core_map[initial_zoom]'

      assert_select 'input[name=?]', 'aim/core_map[authorization_user_manual_file_name]'

      assert_select 'input[name=?]', 'aim/core_map[authorization_user_manual_content_type]'

      assert_select 'input[name=?]', 'aim/core_map[authorization_user_manual_file_size]'

      assert_select 'input[name=?]', 'aim/core_map[loader_version]'

      assert_select 'input[name=?]', 'aim/core_map[tiles_version]'

      assert_select 'input[name=?]', 'aim/core_map[incident_positioning_system]'

      assert_select 'input[name=?]', 'aim/core_map[country_code]'

      assert_select 'input[name=?]', 'aim/core_map[region_code]'

      assert_select 'input[name=?]', 'aim/core_map[command_classification_id]'

      assert_select 'input[name=?]', 'aim/core_map[command_district_id]'

      assert_select 'input[name=?]', 'aim/core_map[command_orientation]'

      assert_select 'input[name=?]', 'aim/core_map[fusion_table_on_start]'

      assert_select 'input[name=?]', 'aim/core_map[time_zone]'

      assert_select 'input[name=?]', 'aim/core_map[sales_room_m2]'

      assert_select 'input[name=?]', 'aim/core_map[property_type]'

      assert_select 'input[name=?]', 'aim/core_map[cost_center]'

      assert_select 'input[name=?]', 'aim/core_map[show_custom_fields]'
    end
  end
end
