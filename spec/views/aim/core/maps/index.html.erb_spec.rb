require 'rails_helper'

RSpec.describe('aim/core/maps/index', type: :view) do
  before(:each) do
    assign(:aim_core_maps, [
             Aim::Core::Map.create!(
               name: 'Name',
               top_left_x: 2.5,
               top_left_y: 3.5,
               max_zoom: 4,
               bottom_right_x: 5.5,
               max_resolution: 6.5,
               bottom_right_y: 7.5,
               stores_show_from_zoom: 8,
               features_radius: 9,
               range: 10,
               street: 'Street',
               street_number: 11,
               parent_id: 12,
               lft: 13,
               rgt: 14,
               depth: 15,
               kind: 'Kind',
               zoom_matrix: '',
               adjustment_data: '',
               command_radius: 16.5,
               command_latitude: 17.5,
               command_longitude: 18.5,
               time_between_notifications: 19.5,
               max_notifications_per_period: 20,
               notifications_time_period: 21.5,
               scaled_stores: false,
               properties: '',
               until_zoom: 22,
               real_min_zoom: 23,
               initial_zoom: 24,
               authorization_user_manual_file_name: 'Authorization User Manual File Name',
               authorization_user_manual_content_type: 'Authorization User Manual Content Type',
               authorization_user_manual_file_size: 25,
               loader_version: 26,
               tiles_version: 27,
               incident_positioning_system: 'Incident Positioning System',
               country_code: 'Country Code',
               region_code: 'Region Code',
               command_classification_id: 28,
               command_district_id: 29,
               command_orientation: 30.5,
               fusion_table_on_start: false,
               time_zone: 'Time Zone',
               sales_room_m2: 31.5,
               property_type: 32,
               cost_center: 'Cost Center',
               show_custom_fields: false,
             ),
             Aim::Core::Map.create!(
               name: 'Name',
               top_left_x: 2.5,
               top_left_y: 3.5,
               max_zoom: 4,
               bottom_right_x: 5.5,
               max_resolution: 6.5,
               bottom_right_y: 7.5,
               stores_show_from_zoom: 8,
               features_radius: 9,
               range: 10,
               street: 'Street',
               street_number: 11,
               parent_id: 12,
               lft: 13,
               rgt: 14,
               depth: 15,
               kind: 'Kind',
               zoom_matrix: '',
               adjustment_data: '',
               command_radius: 16.5,
               command_latitude: 17.5,
               command_longitude: 18.5,
               time_between_notifications: 19.5,
               max_notifications_per_period: 20,
               notifications_time_period: 21.5,
               scaled_stores: false,
               properties: '',
               until_zoom: 22,
               real_min_zoom: 23,
               initial_zoom: 24,
               authorization_user_manual_file_name: 'Authorization User Manual File Name',
               authorization_user_manual_content_type: 'Authorization User Manual Content Type',
               authorization_user_manual_file_size: 25,
               loader_version: 26,
               tiles_version: 27,
               incident_positioning_system: 'Incident Positioning System',
               country_code: 'Country Code',
               region_code: 'Region Code',
               command_classification_id: 28,
               command_district_id: 29,
               command_orientation: 30.5,
               fusion_table_on_start: false,
               time_zone: 'Time Zone',
               sales_room_m2: 31.5,
               property_type: 32,
               cost_center: 'Cost Center',
               show_custom_fields: false,
             ),
           ])
  end

  it 'renders a list of aim/core/maps' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(6.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(7.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(8.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(9.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(10.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Street'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(11.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(12.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(13.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(14.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(15.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Kind'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(''.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(''.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(16.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(17.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(18.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(19.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(20.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(21.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(''.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(22.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(23.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(24.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Authorization User Manual File Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Authorization User Manual Content Type'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(25.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(26.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(27.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Incident Positioning System'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Country Code'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Region Code'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(28.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(29.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(30.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Time Zone'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(31.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(32.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Cost Center'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
  end
end
