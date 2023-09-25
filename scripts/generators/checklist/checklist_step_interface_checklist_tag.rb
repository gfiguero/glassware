# frozen_string_literal: true

class ChecklistStepInterfaceChecklistTagScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'ChecklistStepInterfaceChecklistTag'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_checklist_step_interface_checklist_tags'

  FIELDS = [
    'checklist_step_interface_id:integer',
    'checklist_tag_id:integer',
    'created_at:datetime',
    'updated_at:datetime',
    'grade_weight:float'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
