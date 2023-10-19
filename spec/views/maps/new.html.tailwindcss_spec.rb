require 'rails_helper'

RSpec.describe "maps/new", type: :view do
  before(:each) do
    assign(:map, Map.new(
      name: "MyString",
      top_left_x: 1.5,
      top_left_y: 1.5,
      max_zoom: 1,
      bottom_right_x: 1.5,
      max_resolution: 1.5,
      bottom_right_y: 1.5,
      stores_show_from_zoom: 1,
      features_radius: 1,
      range: 1,
      street: "MyString",
      street_number: 1,
      parent_id: 1,
      lft: 1,
      rgt: 1,
      depth: 1,
      kind: "MyString",
      alias: "MyString",
      zoom_matrix: "",
      adjustment_data: "",
      map_radius: 1.5,
      map_latitude: 1.5,
      map_longitude: 1.5,
      time_between_notifications: 1.5,
      max_notifications_per_period: 1,
      notifications_time_period: 1.5,
      scaled_stores: false,
      properties: "",
      until_zoom: 1,
      real_min_zoom: 1,
      initial_zoom: 1,
      authorization_user_manual_file_name: "MyString",
      authorization_user_manual_content_type: "MyString",
      authorization_user_manual_file_size: 1,
      loader_version: 1,
      tiles_version: 1,
      incident_positioning_system: "MyString",
      country_code: "MyString",
      region_code: "MyString",
      map_classification_id: 1,
      map_district_id: 1,
      map_orientation: 1.5,
      fusion_table_on_start: false,
      time_zone: "MyString",
      sales_room_m2: 1.5,
      property_type: 1,
      cost_center: "MyString",
      show_custom_fields: false
    ))
  end

  it "renders new map form" do
    render

    assert_select "form[action=?][method=?]", maps_path, "post" do

      assert_select "input[name=?]", "map[name]"

      assert_select "input[name=?]", "map[top_left_x]"

      assert_select "input[name=?]", "map[top_left_y]"

      assert_select "input[name=?]", "map[max_zoom]"

      assert_select "input[name=?]", "map[bottom_right_x]"

      assert_select "input[name=?]", "map[max_resolution]"

      assert_select "input[name=?]", "map[bottom_right_y]"

      assert_select "input[name=?]", "map[stores_show_from_zoom]"

      assert_select "input[name=?]", "map[features_radius]"

      assert_select "input[name=?]", "map[range]"

      assert_select "input[name=?]", "map[street]"

      assert_select "input[name=?]", "map[street_number]"

      assert_select "input[name=?]", "map[parent_id]"

      assert_select "input[name=?]", "map[lft]"

      assert_select "input[name=?]", "map[rgt]"

      assert_select "input[name=?]", "map[depth]"

      assert_select "input[name=?]", "map[kind]"

      assert_select "input[name=?]", "map[alias]"

      assert_select "input[name=?]", "map[zoom_matrix]"

      assert_select "input[name=?]", "map[adjustment_data]"

      assert_select "input[name=?]", "map[map_radius]"

      assert_select "input[name=?]", "map[map_latitude]"

      assert_select "input[name=?]", "map[map_longitude]"

      assert_select "input[name=?]", "map[time_between_notifications]"

      assert_select "input[name=?]", "map[max_notifications_per_period]"

      assert_select "input[name=?]", "map[notifications_time_period]"

      assert_select "input[name=?]", "map[scaled_stores]"

      assert_select "input[name=?]", "map[properties]"

      assert_select "input[name=?]", "map[until_zoom]"

      assert_select "input[name=?]", "map[real_min_zoom]"

      assert_select "input[name=?]", "map[initial_zoom]"

      assert_select "input[name=?]", "map[authorization_user_manual_file_name]"

      assert_select "input[name=?]", "map[authorization_user_manual_content_type]"

      assert_select "input[name=?]", "map[authorization_user_manual_file_size]"

      assert_select "input[name=?]", "map[loader_version]"

      assert_select "input[name=?]", "map[tiles_version]"

      assert_select "input[name=?]", "map[incident_positioning_system]"

      assert_select "input[name=?]", "map[country_code]"

      assert_select "input[name=?]", "map[region_code]"

      assert_select "input[name=?]", "map[map_classification_id]"

      assert_select "input[name=?]", "map[map_district_id]"

      assert_select "input[name=?]", "map[map_orientation]"

      assert_select "input[name=?]", "map[fusion_table_on_start]"

      assert_select "input[name=?]", "map[time_zone]"

      assert_select "input[name=?]", "map[sales_room_m2]"

      assert_select "input[name=?]", "map[property_type]"

      assert_select "input[name=?]", "map[cost_center]"

      assert_select "input[name=?]", "map[show_custom_fields]"
    end
  end
end
