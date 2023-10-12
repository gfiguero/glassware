# frozen_string_literal: true

class AuthorizationRequestTypeNotificableExceptionScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'AuthorizationRequestTypeNotificableException'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_authorization_request_type_document_types'

  FIELDS = [
    'request_type_id:integer',
    'name:string',
    'description:text',
    'validation_type:integer',
    'created_at:datetime',
    'updated_at:datetime'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
