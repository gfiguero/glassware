# frozen_string_literal: true

class ChecklistStepScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'ChecklistStep'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_checklist_steps'

  FIELDS = [
    'checklist_step_interface_id:integer',
    'checklist_id:integer',
    'checklist_grade_option_id:integer',
    'comments:text',
    'grade:integer',
    'created_at:datetime',
    'updated_at:datetime',
    'answered_at:datetime',
    'skipped:boolean',
    'incident_slug:string',
    'infrastructure_id:integer',
    'forced_grade:boolean',
    'grade_weight:float',
    'slug:string',
    'grade_weight_percentage:float',
    'checklist_section_id:integer',
    'absolute_grade_weight_percentage:float',
    'absolute_grade_percentage:float'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
