# frozen_string_literal: true

class AuthorizationProvisionSupplierScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'AuthorizationProvisionSupplier'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_authorization_provision_suppliers'

  FIELDS = [
    'provision_id:integer',
    'supplier_id:integer',
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
