# frozen_string_literal: true

class MaintenanceInfrastructureInterfaceSupplierScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'MaintenanceInfrastructureInterfaceSupplier'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_maintenance_infrastructure_interfaces_suppliers'

  FIELDS = [
    'infrastructure_interface_id:integer',
    'supplier_id:integer'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
