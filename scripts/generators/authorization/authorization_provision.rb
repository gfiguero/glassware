# frozen_string_literal: true

class AuthorizationProvisionScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold authorization/Provision'
  BASE_COMMAND_DESTROY = 'rails d scaffold authorization/Provision'
  TABLE_NAME = 'aim_authorization_provisions'

  FIELDS = [
    'name:string',
    'description:text',
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
