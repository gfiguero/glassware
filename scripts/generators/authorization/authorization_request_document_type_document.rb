# frozen_string_literal: true

class AuthorizationRequestDocumentTypeDocumentScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'AuthorizationRequestDocumentTypeDocument'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_authorization_request_document_type_documents'

  FIELDS = [
    'request_id:integer',
    'document_type_id:integer',
    'document_id:integer'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
