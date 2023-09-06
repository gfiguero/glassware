# frozen_string_literal: true

class AuthorizationRequestDocumentTypeDocumentScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold authorization/RequestDocumentTypeDocument'
  BASE_COMMAND_DESTROY = 'rails d scaffold authorization/RequestDocumentTypeDocument'
  TABLE_NAME = 'aim_authorization_request_document_type_documents'

  FIELDS = [
    'request_id:integer',
    'document_type_id:integer',
    'document_id:integer'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{TABLE_NAME} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{TABLE_NAME}"
  end

  attr_reader :command
end
