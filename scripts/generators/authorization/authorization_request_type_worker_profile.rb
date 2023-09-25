# frozen_string_literal: true

class AuthorizationRequestTypeWorkerProfileScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'AuthorizationRequestTypeWorkerProfile'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_authorization_request_type_worker_profiles'

  FIELDS = [
    'name:string',
    'request_type_id:integer',
    'validation_type:integer',
    'default:boolean',
    'workerable_type:integer'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
