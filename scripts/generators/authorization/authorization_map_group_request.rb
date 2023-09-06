# frozen_string_literal: true

class AuthorizationMapGroupRequestScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold authorization/MapGroupRequest'
  BASE_COMMAND_DESTROY = 'rails d scaffold authorization/MapGroupRequest'
  TABLE_NAME = 'aim_authorization_map_group_requests'

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
    @command = "#{BASE_COMMAND_GENERATE} #{TABLE_NAME} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{TABLE_NAME}"
  end

  attr_reader :command
end
