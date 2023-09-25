# frozen_string_literal: true

class AuthorizationAuthorizedMapScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'AuthorizationAuthorizedMap'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_authorization_authorized_maps'

  FIELDS = [
    'request_id:integer',
    'map_id:integer',
    'state:string',
    'authorized_at:datetime',
    'created_at:datetime',
    'updated_at:datetime',
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
