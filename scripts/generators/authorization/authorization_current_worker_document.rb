# frozen_string_literal: true

class AuthorizationCurrentWorkerDocumentScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'AuthorizationCurrentWorkerDocument'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_authorization_current_worker_documents'

  FIELDS = [
    'request_workerable_worker_id:integer',
    'worker_document_id:integer'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
