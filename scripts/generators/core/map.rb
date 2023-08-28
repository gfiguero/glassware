# frozen_string_literal: true

class MapScaffold
  def generate_command
    command = 'rails g scaffold aim/core/map '
    command = "#{command}name:string "
    command = "#{command}top_left_x:float "
    command = "#{command}top_left_y:float "
    command = "#{command}max_zoom:integer "
    command = "#{command}bottom_right_x:float "
    command = "#{command}max_resolution:float "
    command = "#{command}bottom_right_y:float "
    command = "#{command}stores_show_from_zoom:integer "
    command = "#{command}features_radius:integer "
    command = "#{command}range:integer "
    command = "#{command}street:string "
    command = "#{command}street_number:integer "
    command = "#{command}parent_id:integer "
    command = "#{command}lft:integer "
    command = "#{command}rgt:integer "
    command = "#{command}depth:integer "
    command = "#{command}kind:string "
    # command = command + "`alias`:string " #reserved word
    # command = command + "created_at:datetime " #redefined field
    # command = command + "updated_at:datetime " #redefined field
    command = "#{command}last_update:datetime "
    command = "#{command}last_change:datetime "
    command = "#{command}zoom_matrix:hstore "
    command = "#{command}adjustment_data:hstore "
    command = "#{command}command_radius:float "
    command = "#{command}command_latitude:float "
    command = "#{command}command_longitude:float "
    command = "#{command}time_between_notifications:float "
    command = "#{command}max_notifications_per_period:integer "
    command = "#{command}notifications_time_period:float "
    command = "#{command}scaled_stores:boolean "
    command = "#{command}properties:hstore "
    command = "#{command}until_zoom:integer "
    command = "#{command}real_min_zoom:integer "
    command = "#{command}initial_zoom:integer "
    command = "#{command}authorization_user_manual_file_name:string "
    command = "#{command}authorization_user_manual_content_type:string "
    command = "#{command}authorization_user_manual_file_size:integer "
    command = "#{command}authorization_user_manual_updated_at:datetime "
    command = "#{command}loader_version:integer "
    command = "#{command}tiles_version:integer "
    command = "#{command}incident_positioning_system:string "
    command = "#{command}country_code:string "
    command = "#{command}region_code:string "
    command = "#{command}command_classification_id:integer:index "
    command = "#{command}command_district_id:integer:index "
    command = "#{command}command_orientation:float "
    command = "#{command}fusion_table_on_start:boolean "
    command = "#{command}time_zone:string:index "
    command = "#{command}deleted_at:datetime:index "
    command = "#{command}sales_room_m2:float "
    command = "#{command}property_type:integer "
    command = "#{command}cost_center:string "
    command = "#{command}show_custom_fields:boolean "
    command = "#{command}--skip-migration "
    @command = command
  end

  def destroy_command
    command = 'rails d scaffold aim/core/map '
    @command = command
  end
end
