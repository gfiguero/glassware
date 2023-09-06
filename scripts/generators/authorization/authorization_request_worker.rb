# frozen_string_literal: true

class AuthorizationRequestWorkerScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold authorization/RequestWorker'
  BASE_COMMAND_DESTROY = 'rails d scaffold authorization/RequestWorker'
  TABLE_NAME = 'aim_authorization_request_workers'

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
    @command = "#{BASE_COMMAND_GENERATE} #{TABLE_NAME} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{TABLE_NAME}"
  end

  attr_reader :command
end
