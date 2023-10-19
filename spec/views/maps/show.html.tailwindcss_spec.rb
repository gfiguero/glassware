require 'rails_helper'

RSpec.describe "maps/show", type: :view do
  before(:each) do
    assign(:map, Map.create!(
      name: "Name",
      top_left_x: 2.5,
      top_left_y: 3.5,
      max_zoom: 4,
      bottom_right_x: 5.5,
      max_resolution: 6.5,
      bottom_right_y: 7.5,
      stores_show_from_zoom: 8,
      features_radius: 9,
      range: 10,
      street: "Street",
      street_number: 11,
      parent_id: 12,
      lft: 13,
      rgt: 14,
      depth: 15,
      kind: "Kind",
      alias: "Alias",
      zoom_matrix: "",
      adjustment_data: "",
      map_radius: 16.5,
      map_latitude: 17.5,
      map_longitude: 18.5,
      time_between_notifications: 19.5,
      max_notifications_per_period: 20,
      notifications_time_period: 21.5,
      scaled_stores: false,
      properties: "",
      until_zoom: 22,
      real_min_zoom: 23,
      initial_zoom: 24,
      authorization_user_manual_file_name: "Authorization User Manual File Name",
      authorization_user_manual_content_type: "Authorization User Manual Content Type",
      authorization_user_manual_file_size: 25,
      loader_version: 26,
      tiles_version: 27,
      incident_positioning_system: "Incident Positioning System",
      country_code: "Country Code",
      region_code: "Region Code",
      map_classification_id: 28,
      map_district_id: 29,
      map_orientation: 30.5,
      fusion_table_on_start: false,
      time_zone: "Time Zone",
      sales_room_m2: 31.5,
      property_type: 32,
      cost_center: "Cost Center",
      show_custom_fields: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5.5/)
    expect(rendered).to match(/6.5/)
    expect(rendered).to match(/7.5/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9/)
    expect(rendered).to match(/10/)
    expect(rendered).to match(/Street/)
    expect(rendered).to match(/11/)
    expect(rendered).to match(/12/)
    expect(rendered).to match(/13/)
    expect(rendered).to match(/14/)
    expect(rendered).to match(/15/)
    expect(rendered).to match(/Kind/)
    expect(rendered).to match(/Alias/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/16.5/)
    expect(rendered).to match(/17.5/)
    expect(rendered).to match(/18.5/)
    expect(rendered).to match(/19.5/)
    expect(rendered).to match(/20/)
    expect(rendered).to match(/21.5/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
    expect(rendered).to match(/22/)
    expect(rendered).to match(/23/)
    expect(rendered).to match(/24/)
    expect(rendered).to match(/Authorization User Manual File Name/)
    expect(rendered).to match(/Authorization User Manual Content Type/)
    expect(rendered).to match(/25/)
    expect(rendered).to match(/26/)
    expect(rendered).to match(/27/)
    expect(rendered).to match(/Incident Positioning System/)
    expect(rendered).to match(/Country Code/)
    expect(rendered).to match(/Region Code/)
    expect(rendered).to match(/28/)
    expect(rendered).to match(/29/)
    expect(rendered).to match(/30.5/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Time Zone/)
    expect(rendered).to match(/31.5/)
    expect(rendered).to match(/32/)
    expect(rendered).to match(/Cost Center/)
    expect(rendered).to match(/false/)
  end
end
