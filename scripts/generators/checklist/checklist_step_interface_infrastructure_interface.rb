# frozen_string_literal: true

class ChecklistStepInterfaceInfrastructureInterfaceScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'ChecklistStepInterfaceInfrastructureInterface'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_checklist_step_interface_infrastructure_interfaces'

  FIELDS = [
    'checklist_step_interface_id:integer',
    'infrastructure_interface_id:integer',
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
