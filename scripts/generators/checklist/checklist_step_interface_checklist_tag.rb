# frozen_string_literal: true

class ChecklistStepInterfaceChecklistTagScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold ChecklistStepInterfaceChecklistTag'
  BASE_COMMAND_DESTROY = 'rails d scaffold ChecklistStepInterfaceChecklistTag'

  FIELDS = [
    'checklist_step_interface_id:integer',
    'checklist_tag_id:integer',
    'created_at:datetime',
    'updated_at:datetime',
    'grade_weight:float'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = BASE_COMMAND_DESTROY
  end

  attr_reader :command
end
