# frozen_string_literal: true

class AuthorizationWorkerDocumentScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold authorization/WorkerDocument'
  BASE_COMMAND_DESTROY = 'rails d scaffold authorization/WorkerDocument'
  TABLE_NAME = 'aim_authorization_worker_documents'

  FIELDS = [
    'contact_id:integer',
    'document_type_id:integer',
    'request_worker_profile_id:integer',
    'created_at:datetime',
    'updated_at:datetime',
    'file_file_name:string',
    'file_content_type:string',
    'file_file_size:integer',
    'file_updated_at:datetime',
    'state:integer',
    'expiration_date:datetime',
    'user_id:integer',
    'authorization_date:datetime',
    'workerable_worker_id:integer',
    'deleted_at:datetime',
    'worker_document_version_id:integer'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{TABLE_NAME} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{TABLE_NAME}"
  end

  attr_reader :command
end
