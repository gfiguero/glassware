# frozen_string_literal: true

class AuthorizationMapGroupRequestScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'AuthorizationMapGroupRequest'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_authorization_map_group_requests'

  FIELDS = [
    'map_id:integer',
    'group_id:integer',
    'request_id:integer',
    'authorizer_id:integer',
    'state:string',
    'authorized_at:datetime',
    'message:text',
    'created_at:datetime',
    'updated_at:datetime',
    'slug:string'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
