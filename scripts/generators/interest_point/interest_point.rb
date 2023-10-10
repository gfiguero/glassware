# frozen_string_literal: true

class InterestPointScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'InterestPoint'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_interest_points'

  FIELDS = [
    'name:string',
    'description:text',
    'show_from_zoom:integer',
    'radius:integer',
    'rotation:integer',
    'font_color:string',
    'font_size:string',
    'text:string',
    'type:string',
    'occured_at:datetime',
    'map_id:integer',
    'user_id:integer',
    'location_id:integer',
    'created_at:datetime',
    'updated_at:datetime',
    'comment:text',
    'sector_id:integer',
    'z_index:integer',
    'deleted_at:datetime',
    'authorization_start_at:datetime',
    'authorization_ends_at:datetime',
    'approved:boolean',
    'authorized_by:integer',
    'token:string',
    'location_group_id:integer',
    'color:string',
    'uuid:string',
    'visibility_radius:float',
    'angle_start:float',
    'angle_end:float',
    'user_timestamp:integer',
    'uncertainty_radius:integer',
    'vision_angle:integer',
    'minor:integer',
    'mayor:integer',
    'has_position:boolean',
    'store_type:string',
    'map_logo_url:string',
    'menu_logo_url:string',
    'remodeling:boolean',
    'highlighted:boolean',
    'special_offers:boolean',
    'capability:string',
    'gift_certificate:boolean',
    'properties:hstore',
    'suc:string',
    'phone:string',
    'contact_mail:string',
    'web_page:string',
    'facebook_page:string',
    'twitter_page:string',
    'year:string',
    'position:geometry',
    'encrypted_password:string',
    'lessee_id:integer',
    'qr_code:string',
    'qr_code_type:integer',
    'public_state:integer',
    'inactive:boolean'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join('')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
