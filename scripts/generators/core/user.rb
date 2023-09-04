# frozen_string_literal: true

class UserScaffold
  BASE_COMMAND = 'rails g scaffold aim/core/user'
  DESTROY_COMMAND = 'rails d scaffold aim/core/user'
  TABLE_NAME = 'aim_users'

  FIELDS = [
    'serial_number:float',
    'name:string',
    'email:string:index',
    'encrypted_password:string',
    'reset_password_token:string:index',
    'reset_password_sent_at:datetime',
    'remember_created_at:datetime',
    'sign_in_count:integer',
    'current_sign_in_at:datetime',
    'last_sign_in_at:datetime',
    'current_sign_in_ip:string',
    'last_sign_in_ip:string',
    'role:string',
    'created_at:datetime',
    'updated_at:datetime',
    'token:string',
    'deleted_at:datetime:index',
    'map_id:integer',
    'type:string',
    'rut:string',
    'turn:string',
    'address:string',
    'gender:string',
    'last_names:string',
    'imei:string',
    'username:string',
    'position:geometry',
    'zone_id:integer:index',
    'state:string',
    'state_updated_at:datetime',
    'phone_number:string',
    'external_id:string',
    'password_changed_at:datetime:index',
    'last_activity_at:datetime:index',
    'expired_at:datetime:index',
    'locked_at:datetime:index',
    'failed_attempts:integer',
    'unlock_token:string:index',
    'confirmation_token:string:index',
    'confirmed_at:datetime:index',
    'confirmation_sent_at:datetime:index',
    'unconfirmed_email:string',
    'provider:string',
    'initials:string',
    'tracking_report:datetime:index',
    'slug:string',
    'current_loggable_type:integer',
    'deactivate:boolean',
    'deactivation_date:date',
    'duration_range_id:integer',
    'temporary_password:boolean',
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND} #{TABLE_NAME} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{DESTROY_COMMAND} #{TABLE_NAME}"
  end

  # If you ever want to print or access the command outside the class:
  attr_reader :command
end
