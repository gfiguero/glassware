# frozen_string_literal: true

class InfrastructureConfigScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'InfrastructureConfig'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_infrastructure_configs'

  FIELDS = [
    'global_config_id:integer',
    'require_maintenance_supplier:boolean',
    'require_maintenance_document:boolean'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
