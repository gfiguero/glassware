# frozen_string_literal: true

class ChecklistStepInterfaceScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'ChecklistStepInterface'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_checklist_step_interfaces'

  FIELDS = [
    'checklist_section_interface_id:integer',
    'name:string',
    'description:text',
    'comments_when_high_grade:integer',
    'pictures_when_high_grade:integer',
    'documents_when_high_grade:integer',
    'has_grade:boolean',
    'low_grade:integer',
    'incident_interface_id:integer',
    'created_at:datetime',
    'updated_at:datetime',
    'required:boolean',
    'skippable:boolean',
    'grade_weight:float',
    'light_question:boolean',
    'comments_when_low_grade:integer',
    'pictures_when_low_grade:integer',
    'documents_when_low_grade:integer',
    'parent_checklist_step_interface_id:integer',
    'parent_checklist_grade_option_id:integer',
    'default_grade:integer',
    'default_checklist_grade_option_id:integer',
    'rank:float',
    'deleted_at:datetime'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
