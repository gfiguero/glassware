# frozen_string_literal: true

class AuthorizationProvisionSupplierScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold authorization/ProvisionSupplier'
  BASE_COMMAND_DESTROY = 'rails d scaffold authorization/ProvisionSupplier'
  TABLE_NAME = 'aim_authorization_provision_suppliers'

  FIELDS = [
    'provision_id:integer',
    'supplier_id:integer',
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
