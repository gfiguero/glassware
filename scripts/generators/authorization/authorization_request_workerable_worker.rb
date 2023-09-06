# frozen_string_literal: true

class AuthorizationRequestWorkerableWorkerScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold authorization/RequestWorkerableWorker'
  BASE_COMMAND_DESTROY = 'rails d scaffold authorization/RequestWorkerableWorker'
  TABLE_NAME = 'aim_authorization_request_workerable_workers'

  FIELDS = [
    'request_worker_id:integer'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{TABLE_NAME} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{TABLE_NAME}"
  end

  attr_reader :command
end
