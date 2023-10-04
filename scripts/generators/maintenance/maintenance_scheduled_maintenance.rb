# frozen_string_literal: true

class MaintenanceScheduledMaintenanceScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'MaintenanceScheduledMaintenance'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_maintenance_scheduled_maintenances'

  FIELDS = [
    'description:text',
    'state:integer',
    'date:date',
    'infrastructure_id:integer',
    'created_at:datetime',
    'updated_at:datetime',
    'limit_date:date'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
