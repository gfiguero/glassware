# frozen_string_literal: true

class ChecklistStepInterfaceChecklistTagScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold aim/checklist/ChecklistStepInterfaceChecklistTag'
  BASE_COMMAND_DESTROY = 'rails d scaffold aim/checklist/ChecklistStepInterfaceChecklistTag'
  TABLE_NAME = 'aim_checklist_step_interface_checklist_tags'

  FIELDS = [
    'checklist_step_interface_id:integer',
    'checklist_tag_id:integer',
    'created_at:datetime',
    'updated_at:datetime',
    'grade_weight:float'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{TABLE_NAME} #{FIELDS.join(' ')} --skip-migration"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{TABLE_NAME}"
  end

  attr_reader :command
end
