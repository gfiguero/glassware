# frozen_string_literal: true

class AuthorizationRequestTypeWorkerProfileDocumentTypeScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold authorization/RequestTypeWorkerProfileDocumentType'
  BASE_COMMAND_DESTROY = 'rails d scaffold authorization/RequestTypeWorkerProfileDocumentType'
  TABLE_NAME = 'aim_authorization_request_type_worker_profiles_document_types'

  FIELDS = [
    'worker_profile_id:integer',
    'document_type_id:integer'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{TABLE_NAME} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{TABLE_NAME}"
  end

  attr_reader :command
end
