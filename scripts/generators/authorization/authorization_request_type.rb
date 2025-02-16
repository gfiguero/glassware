# frozen_string_literal: true

class AuthorizationRequestTypeScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'AuthorizationRequestType'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_authorization_request_types'

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
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
