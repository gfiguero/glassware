# frozen_string_literal: true

class AuthorizationRequestTypeNotificableGroupScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold authorization/RequestTypeNotificableGroup'
  BASE_COMMAND_DESTROY = 'rails d scaffold authorization/RequestTypeNotificableGroup'
  TABLE_NAME = 'aim_authorization_request_type_notificable_groups'

  FIELDS = [
    'request_type_id:integer',
    'group_id:integer',
    'created_at:datetime',
    'updated_at:datetime',
    'deleted_at:datetime'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{TABLE_NAME} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{TABLE_NAME}"
  end

  attr_reader :command
end
