# frozen_string_literal: true

class ChecklistStepInterfaceInfrastructureInterfaceScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold aim/checklist/ChecklistStepInterfaceInfrastructureInterface'
  BASE_COMMAND_DESTROY = 'rails d scaffold aim/checklist/ChecklistStepInterfaceInfrastructureInterface'

  FIELDS = [
    'checklist_step_interface_id:integer',
    'infrastructure_interface_id:integer',
    'created_at:datetime',
    'updated_at:datetime'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY}"
  end

  attr_reader :command
end
