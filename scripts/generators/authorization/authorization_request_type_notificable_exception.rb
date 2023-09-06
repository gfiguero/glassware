# frozen_string_literal: true

class AuthorizationRequestTypeNotificableExceptionScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold authorization/RequestTypeNotificableException'
  BASE_COMMAND_DESTROY = 'rails d scaffold authorization/RequestTypeNotificableException'
  TABLE_NAME = 'aim_authorization_request_type_notificable_exceptions'

  FIELDS = [
    'request_type_id:integer',
    'user_id:integer'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{TABLE_NAME} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{TABLE_NAME}"
  end

  attr_reader :command
end
