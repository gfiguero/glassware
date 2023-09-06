# frozen_string_literal: true

class AuthorizationGroupRequestScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold aim/authorization/GroupRequest'
  BASE_COMMAND_DESTROY = 'rails d scaffold aim/authorization/GroupRequest'
  TABLE_NAME = 'aim_authorization_group_requests'

  FIELDS = [
    'request_id:integer',
    'authorizer_id:integer',
    'group_id:integer',
    'state:string',
    'created_at:datetime',
    'updated_at:datetime',
    'authorized_at:datetime',
    'message:text'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{TABLE_NAME} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{TABLE_NAME}"
  end

  attr_reader :command
end
