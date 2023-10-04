# frozen_string_literal: true

class MaintenanceInfrastructureTextFieldInterfaceScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'MaintenanceInfrastructureTextFieldInterface'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_maintenance_infrastructure_text_field_interfaces'

  FIELDS = [
    'infrastructure_interface_id:integer',
    'name:string',
    'required:boolean',
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
