# frozen_string_literal: true

class MaintenanceInfrastructureMaintenanceScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'MaintenanceInfrastructureMaintenance'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_maintenance_infrastructure_maintenances'

  FIELDS = [
    'infrastructure_id:integer',
    'maintenance_date:datetime',
    'created_at:datetime',
    'updated_at:datetime',
    'supplier_id:integer',
    'purchase_order:string',
    'quote_number:string',
    'net_amount:integer',
    'scheduled_maintenance_id:integer',
    'currency_id:integer'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
