# frozen_string_literal: true

class MapScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'Map'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_maps'

  FIELDS = [
    'name:string',
    'top_left_x:float',
    'top_left_y:float',
    'max_zoom:integer',
    'bottom_right_x:float',
    'max_resolution:float',
    'bottom_right_y:float',
    'stores_show_from_zoom:integer',
    'features_radius:integer',
    'range:integer',
    'street:string',
    'street_number:integer',
    'parent_id:integer',
    'lft:integer',
    'rgt:integer',
    'depth:integer',
    'kind:string',
    'alias:string',
    'created_at:datetime',
    'updated_at:datetime',
    'last_update:datetime',
    'last_change:datetime',
    'zoom_matrix:hstore',
    'adjustment_data:hstore',
    'map_radius:float',
    'map_latitude:float',
    'map_longitude:float',
    'time_between_notifications:float',
    'max_notifications_per_period:integer',
    'notifications_time_period:float',
    'scaled_stores:boolean',
    'properties:hstore',
    'until_zoom:integer',
    'real_min_zoom:integer',
    'initial_zoom:integer',
    'authorization_user_manual_file_name:string',
    'authorization_user_manual_content_type:string',
    'authorization_user_manual_file_size:integer',
    'authorization_user_manual_updated_at:datetime',
    'loader_version:integer',
    'tiles_version:integer',
    'incident_positioning_system:string',
    'country_code:string',
    'region_code:string',
    'map_classification_id:integer:index',
    'map_district_id:integer:index',
    'map_orientation:float',
    'fusion_table_on_start:boolean',
    'time_zone:string:index',
    'sales_room_m2:float',
    'property_type:integer',
    'cost_center:string',
    'show_custom_fields:boolean',
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  # If you ever want to print or access the command outside the class:
  attr_reader :command
end
