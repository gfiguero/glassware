# frozen_string_literal: true

class AuthorizationRequestTypeDocumentTypeScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold authorization/RequestTypeDocumentType'
  BASE_COMMAND_DESTROY = 'rails d scaffold authorization/RequestTypeDocumentType'
  TABLE_NAME = 'aim_authorization_request_type_document_types'

  FIELDS = [
    'request_type_id:integer',
    'name:string',
    'description:text',
    'validation_type:integer',
    'created_at:datetime',
    'updated_at:datetime'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{TABLE_NAME} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{TABLE_NAME}"
  end

  attr_reader :command
end
