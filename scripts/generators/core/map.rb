# frozen_string_literal: true

class MapScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold aim/core/map'
  BASE_COMMAND_DESTROY = 'rails d scaffold aim/core/map'

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
    # '`alias`:string', #reserved word
    # 'created_at:datetime', #redefined field
    # 'updated_at:datetime', #redefined field
    'last_update:datetime',
    'last_change:datetime',
    'zoom_matrix:hstore',
    'adjustment_data:hstore',
    'command_radius:float',
    'command_latitude:float',
    'command_longitude:float',
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
    'command_classification_id:integer:index',
    'command_district_id:integer:index',
    'command_orientation:float',
    'fusion_table_on_start:boolean',
    'time_zone:string:index',
    'deleted_at:datetime:index',
    'sales_room_m2:float',
    'property_type:integer',
    'cost_center:string',
    'show_custom_fields:boolean',
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = BASE_COMMAND_DESTROY
  end

  # If you ever want to print or access the command outside the class:
  attr_reader :command
end
