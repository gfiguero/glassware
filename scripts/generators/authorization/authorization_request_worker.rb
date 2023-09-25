# frozen_string_literal: true

class AuthorizationRequestWorkerScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'AuthorizationRequestWorker'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_authorization_request_workers'

  FIELDS = [
    'request_id:integer',
    'worker_id:integer',
    'created_at:datetime',
    'updated_at:datetime',
    'worker_profile_id:integer',
    'owner_type:integer',
    'workerable_id:integer',
    'workerable_type:string'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
