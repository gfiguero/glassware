# frozen_string_literal: true

class AuthorizationAuthorizedMapScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold aim/authorization/AuthorizedMap'
  BASE_COMMAND_DESTROY = 'rails d scaffold aim/authorization/AuthorizedMap'
  TABLE_NAME = 'aim_authorization_authorized_maps'

  FIELDS = [
    'request_id:integer',
    'map_id:integer',
    'state:string',
    'authorized_at:datetime',
    'created_at:datetime',
    'updated_at:datetime',
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{TABLE_NAME} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{TABLE_NAME}"
  end

  attr_reader :command
end
