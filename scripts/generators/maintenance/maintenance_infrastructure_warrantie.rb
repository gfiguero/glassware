# frozen_string_literal: true

class MaintenanceInfrastructureWarrantyScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'MaintenanceInfrastructureWarranty'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_maintenance_infrastructure_warranties'

  FIELDS = [
    'infrastructure_id:integer',
    'name:string',
    'deadline:date',
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
