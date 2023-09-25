# frozen_string_literal: true

class ChecklistGradeOptionScaffold
  BASE_COMMAND_GENERATE = 'rails g scaffold'
  BASE_COMMAND_DESTROY = 'rails d scaffold'
  CLASS_NAME = 'ChecklistGradeOption'
  COMMAND_OPTIONS = '--skip-migration --force --v1_table_name aim_checklist_grade_options'

  FIELDS = [
    'checklist_step_interface_id:integer',
    'name:string',
    'grade:integer',
    'incident_interface_id:integer',
    'created_at:datetime',
    'updated_at:datetime',
    'comments:integer',
    'pictures:integer',
    'documents:integer',
    'deleted_at:datetime',
    'default_tag_for_incident_id:integer'
  ].freeze

  def generate_command
    @command = "#{BASE_COMMAND_GENERATE} #{CLASS_NAME} #{FIELDS.join(' ')} #{COMMAND_OPTIONS}"
  end

  def destroy_command
    @command = "#{BASE_COMMAND_DESTROY} #{CLASS_NAME}"
  end

  attr_reader :command
end
