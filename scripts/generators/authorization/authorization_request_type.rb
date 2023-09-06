# frozen_string_literal: true

class AuthorizationRequestTypeScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold authorization/RequestType'
  BASE_COMMAND_DESTROY = 'rails d scaffold authorization/RequestType'
  TABLE_NAME = 'aim_authorization_request_types'

  FIELDS = [
    'name:string',
    'store:integer',
    'infrastructure:integer',
    'created_at:datetime',
    'updated_at:datetime',
    'map_id:integer',
    'description:text',
    'deleted_at:datetime',
    'anticipation_time:string',
    'add_description_to_email:boolean',
    'global_map_options:integer',
    'attachment_number:integer',
    'check_store_request_auth:boolean',
    'start_working_hour:time',
    'end_working_hours:time',
    'document_type_id:integer',
    'max_duration:integer',
    'max_workers_number:integer',
    'terms_and_conditions_to_save:boolean',
    'from_hour_to_create:time',
    'until_hour_to_create:time',
    'show_declaration:boolean',
    'update_until_approved:boolean',
    'scope_type:integer',
    'min_workers_number:integer',
    'category:integer'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{TABLE_NAME} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{TABLE_NAME}"
  end

  attr_reader :command
end
