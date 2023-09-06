# frozen_string_literal: true

class AuthorizationProvisionRequestTypeScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold authorization/ProvisionRequestType'
  BASE_COMMAND_DESTROY = 'rails d scaffold authorization/ProvisionRequestType'
  TABLE_NAME = 'aim_authorization_provision_request_types'

  FIELDS = [
    'provision_id:integer',
    'request_type_id:integer',
    'created_at:datetime',
    'updated_at:datetime',
    'deleted_at:datetime'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{TABLE_NAME} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{TABLE_NAME}"
  end

  attr_reader :command
end
