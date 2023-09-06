# frozen_string_literal: true

class AuthorizationCurrentWorkerDocumentScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold aim/authorization/CurrentWorkerDocument'
  BASE_COMMAND_DESTROY = 'rails d scaffold aim/authorization/CurrentWorkerDocument'
  TABLE_NAME = 'aim_authorization_current_worker_documents'

  FIELDS = [
    'request_workerable_worker_id:integer',
    'worker_document_id:integer'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{TABLE_NAME} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{TABLE_NAME}"
  end

  attr_reader :command
end
