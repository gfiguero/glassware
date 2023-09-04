# frozen_string_literal: true

class ChecklistStepChecklistTagScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold ChecklistStepChecklistTag'
  BASE_COMMAND_DESTROY = 'rails d scaffold ChecklistStepChecklistTag'

  FIELDS = [
    'checklist_step_id:integer',
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
