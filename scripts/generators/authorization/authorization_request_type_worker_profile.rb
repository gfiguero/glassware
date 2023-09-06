# frozen_string_literal: true

class AuthorizationRequestTypeWorkerProfileScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold authorization/RequestTypeWorkerProfile'
  BASE_COMMAND_DESTROY = 'rails d scaffold authorization/RequestTypeWorkerProfile'
  TABLE_NAME = 'aim_authorization_request_type_worker_profiles'

  FIELDS = [
    'name:string',
    'request_type_id:integer',
    'validation_type:integer',
    'default:boolean',
    'workerable_type:integer'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{TABLE_NAME} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{TABLE_NAME}"
  end

  attr_reader :command
end
